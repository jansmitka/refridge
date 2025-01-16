import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/domain/models/rf_user.dart';
import 'package:refridge/src/domain/models/shopping_list.dart';
import 'package:refridge/src/services/enums/list_sort_enum.dart';
import 'package:refridge/src/services/enums/section_display_enum.dart';
import 'package:refridge/src/services/snackbar/blocs/snackbar_bloc.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/navigation_service.dart';
import 'package:refridge/src/settings/router/routes.dart';
import 'package:refridge/src/views/add_to_fridge_screen/presentation/components/no_results_container.dart';
import 'package:refridge/src/views/add_to_list_screen/bloc/add_to_list_bloc.dart';
import 'package:refridge/src/views/add_to_fridge_screen/presentation/components/found_groceries_component.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_add_to_list.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_sort_list.dart';
import 'package:refridge/src/widgetbook/buttons/primary_btn_small.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/buttons/sort_button.dart';
import 'package:refridge/src/widgetbook/containers/empty_list.dart';
import 'package:refridge/src/widgetbook/containers/groceries_list.dart';
import 'package:refridge/src/widgetbook/containers/lists_selector.dart';
import 'package:refridge/src/widgetbook/dialogs/modal_bottom_sheet.dart';
import 'package:refridge/src/widgetbook/input_fields/search_input_field.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:refridge/src/widgetbook/wrappers/screen_wrapper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddToListScreen extends StatefulWidget {
  final List<ShoppingList> lists;
  final ShoppingList selectedList;
  final RFUser user;
  const AddToListScreen({
    super.key,
    required this.lists,
    required this.selectedList,
    required this.user,
  });

  @override
  State<AddToListScreen> createState() => _AddToListScreenState();
}

class _AddToListScreenState extends State<AddToListScreen> {
  final navigator = getIt<NavigationService>();
  final searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  void onSearchedItemTapped(GroceryTemplate grocery) async {
    final result = await showRFBottomSheet<Grocery>(
      context: context,
      title: AppLocalizations.of(context)!.add_item_to_fridge_bottom_title,
      builder: (context) => BotSheetAddToList(
        grocery: Grocery.fromTemplate(grocery),
        btnLabel: AppLocalizations.of(context)!.add_item_to_fridge_bottom_add,
        succesLabel:
            AppLocalizations.of(context)!.add_item_to_fridge_bottom_complete,
      ),
    );
    if (result != null) {
      getIt<AddToListBloc>().add(AddToListEvent.addGrocery(result));
    }
  }

  void onGroceryEdit(Grocery grocery) async {
    final result = await showRFBottomSheet<Grocery>(
      context: context,
      title: AppLocalizations.of(context)!.edit_item_to_fridge_bottom_title,
      builder: (context) => BotSheetAddToList(
        grocery: grocery,
        btnLabel: AppLocalizations.of(context)!.edit_item_to_fridge_bottom_add,
        succesLabel:
            AppLocalizations.of(context)!.edit_item_to_fridge_bottom_complete,
        showSucces: false,
      ),
    );
    if (result != null) {
      getIt<AddToListBloc>().add(AddToListEvent.editGrocery(result));
    }
  }

  void onGroceryDelete(Grocery grocery) async {
    getIt<AddToListBloc>().add(AddToListEvent.removeGrocery(grocery));
  }

  void sortTapped(BuildContext context, ListSort selectedSort) async {
    final result = await showRFBottomSheet<ListSort>(
      context: context,
      title: AppLocalizations.of(context)!.botsheet_sort_fridge_title,
      builder: (context) => BotSheetSortList(
        sort: selectedSort,
      ),
    );
    if (result != null) {
      getIt<AddToListBloc>().add(AddToListEvent.sort(result));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: RFScreenWrapper(
        canBack: true,
        useExpanded: true,
        onBack: getIt<NavigationService>().goBack,
        title: AppLocalizations.of(context)!.add_to_list_screen_title,
        child: BlocProvider.value(
          value: getIt<AddToListBloc>()
            ..add(AddToListEvent.init(widget.selectedList)),
          child: BlocListener<AddToListBloc, AddToListState>(
            listenWhen: (previous, current) => current.isCompleted == true,
            listener: (context, state) {
              getIt<SnackbarBloc>().add(SnackbarEvent.showSnackBar(
                SnackbarType.success,
                AppLocalizations.of(context)!.success_title,
                AppLocalizations.of(context)!.add_to_list_screen_success_desc,
              ));
              navigator.popUntil(Routes.mainScreen);
            },
            child: BlocBuilder<AddToListBloc, AddToListState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListSelector(
                            lists: widget.lists,
                            selectedList:
                                state.selectedList ?? widget.selectedList,
                            onTap: (ShoppingList list) => getIt<AddToListBloc>()
                              ..add(AddToListEvent.changeList(list)),
                          ),
                          Focus(
                            child: RFPadding.normalAll(
                              bottom: false,
                              left: false,
                              right: false,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!
                                        .add_to_list_screen_section_title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!,
                                  ),
                                  RFPadding.smallVertical(
                                    child: RFSearchField(
                                        controller: searchController,
                                        label: AppLocalizations.of(context)!
                                            .search,
                                        isEnabled: true,
                                        onChanged: (val) {
                                          getIt<AddToListBloc>().add(
                                            AddToListEvent.searchGrocery(
                                              context,
                                              val,
                                            ),
                                          );
                                        }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (state.noResults &&
                              state.searchedGroceries.isEmpty)
                            const NoResultsContainer(),
                          if (state.searchedGroceries.isNotEmpty)
                            FoundGroceriesComponent(
                              groceries: state.searchedGroceries,
                              onTap: (val) => onSearchedItemTapped(val),
                            ),
                          if (state.searchedGroceries.isEmpty &&
                              state.selectedGroceries.isNotEmpty &&
                              searchController.text.isEmpty)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SortButton(
                                  icon: state.selectedSort.getIcon(),
                                  isAsc: state.selectedSort.isAscending(),
                                  onTap: () => sortTapped(
                                    context,
                                    state.selectedSort,
                                  ),
                                ),
                                PrimaryBtnSmall(
                                  onTap: () => getIt<AddToListBloc>().add(
                                    const AddToListEvent.removeAllGroceries(),
                                  ),
                                  icon: Icons.delete,
                                ),
                              ],
                            ),
                          if (state.searchedGroceries.isEmpty &&
                              state.selectedGroceries.isNotEmpty &&
                              searchController.text.isEmpty)
                            Expanded(
                              child: GroceriesList(
                                groceries: state.selectedGroceries,
                                displayType: SectionDisplayType.grid,
                                onEdit: onGroceryEdit,
                                onDelete: onGroceryDelete,
                              ),
                            ),
                          if (state.searchedGroceries.isEmpty &&
                              state.selectedGroceries.isEmpty &&
                              searchController.text.isEmpty)
                            RFEmptyList(
                              icon: Icons.shopping_cart,
                              label: AppLocalizations.of(context)!
                                  .add_to_list_screen_nothing_in_fridge,
                            ),
                        ],
                      ),
                    ),
                    RFPadding.normalVertical(
                      child: PrimaryTextButton(
                        lable: AppLocalizations.of(context)!
                            .add_to_list_screen_btn,
                        isLoading: state.isLoading,
                        onTap: () => getIt<AddToListBloc>().add(
                          AddToListEvent.addToList(context),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
