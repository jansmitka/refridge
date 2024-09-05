import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/domain/models/rf_user.dart';
import 'package:refridge/src/services/enums/fridge_sort_enum.dart';
import 'package:refridge/src/services/enums/section_display_enum.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/navigation_service.dart';
import 'package:refridge/src/views/add_to_fridge_screen/bloc/add_to_fridge_bloc.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_add_to_fridge.dart';
import 'package:refridge/src/views/add_to_fridge_screen/presentation/components/found_groceries_component.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_sort_fridge.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/buttons/sort_button.dart';
import 'package:refridge/src/widgetbook/containers/fridge_selector.dart';
import 'package:refridge/src/widgetbook/containers/groceries_list.dart';
import 'package:refridge/src/widgetbook/dialogs/modal_bottom_sheet.dart';
import 'package:refridge/src/widgetbook/input_fields/search_input_field.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:refridge/src/widgetbook/wrappers/screen_wrapper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddToFridgeScreen extends StatefulWidget {
  final List<Fridge> fridges;
  final Fridge selectedFridge;
  final RFUser user;
  const AddToFridgeScreen({
    super.key,
    required this.fridges,
    required this.selectedFridge,
    required this.user,
  });

  @override
  State<AddToFridgeScreen> createState() => _AddToFridgeScreenState();
}

class _AddToFridgeScreenState extends State<AddToFridgeScreen> {
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
      builder: (context) => BotSheetAddToFridge(
        grocery: Grocery.fromTemplate(grocery),
        btnLabel: AppLocalizations.of(context)!.add_item_to_fridge_bottom_add,
      ),
    );
    if (result != null) {
      getIt<AddToFridgeBloc>().add(AddToFridgeEvent.addGrocery(result));
    }
  }

  void onGroceryEdit(Grocery grocery) async {
    final result = await showRFBottomSheet<Grocery>(
      context: context,
      title: AppLocalizations.of(context)!.edit_item_to_fridge_bottom_title,
      builder: (context) => BotSheetAddToFridge(
        grocery: grocery,
        btnLabel: AppLocalizations.of(context)!.edit_item_to_fridge_bottom_add,
      ),
    );
    if (result != null) {
      getIt<AddToFridgeBloc>().add(AddToFridgeEvent.editGrocery(result));
    }
  }

  void onGroceryAddToList(Grocery grocery) async {
    print('---Add To List');
  }

  void onGroceryDelete(Grocery grocery) async {
    getIt<AddToFridgeBloc>().add(AddToFridgeEvent.removeGrocery(grocery));
  }

  void sortTapped(BuildContext context, FridgeSort selectedSort) async {
    final result = await showRFBottomSheet<FridgeSort>(
      context: context,
      title: AppLocalizations.of(context)!.botsheet_sort_fridge_title,
      builder: (context) => BotSheetSortFridge(
        sort: selectedSort,
      ),
    );
    if (result != null) {
      getIt<AddToFridgeBloc>().add(AddToFridgeEvent.sort(result));
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
        title: AppLocalizations.of(context)!.add_to_fridge_screen_title,
        child: BlocProvider.value(
          value: getIt<AddToFridgeBloc>()
            ..add(AddToFridgeEvent.init(widget.selectedFridge)),
          child: BlocBuilder<AddToFridgeBloc, AddToFridgeState>(
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FridgeSelector(
                          fridges: widget.fridges,
                          selectedFridge:
                              state.selectedFridge ?? widget.selectedFridge,
                          onTap: (Fridge fridge) => getIt<AddToFridgeBloc>()
                            ..add(AddToFridgeEvent.changeFridge(fridge)),
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
                                      .add_to_fridge_screen_section_title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!,
                                ),
                                RFPadding.smallVertical(
                                  child: RFSearchField(
                                    controller: searchController,
                                    label: AppLocalizations.of(context)!.search,
                                    isEnabled: true,
                                    onChanged: (val) => getIt<AddToFridgeBloc>()
                                      ..add(AddToFridgeEvent.searchGrocery(
                                        context,
                                        val,
                                      )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (state.searchedGroceries.isNotEmpty)
                          FoundGroceriesComponent(
                            groceries: state.searchedGroceries,
                            onTap: (val) => onSearchedItemTapped(val),
                          ),
                        if (state.searchedGroceries.isEmpty &&
                            state.selectedGroceries.isNotEmpty)
                          Row(
                            children: [
                              SortButton(
                                icon: state.selectedSort.getIcon(),
                                isAsc: state.selectedSort.isAscending(),
                                onTap: () => sortTapped(
                                  context,
                                  state.selectedSort,
                                ),
                              ),
                            ],
                          ),
                        if (state.searchedGroceries.isEmpty &&
                            state.selectedGroceries.isNotEmpty)
                          Expanded(
                            child: GroceriesList(
                              groceries: state.selectedGroceries,
                              displayType: SectionDisplayType.grid,
                              onEdit: onGroceryEdit,
                              onAddToList: onGroceryAddToList,
                              onDelete: onGroceryDelete,
                            ),
                          ),
                      ],
                    ),
                  ),
                  RFPadding.normalVertical(
                    child: PrimaryTextButton(
                      lable: AppLocalizations.of(context)!
                          .add_to_fridge_screen_btn,
                      onTap: () {},
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
