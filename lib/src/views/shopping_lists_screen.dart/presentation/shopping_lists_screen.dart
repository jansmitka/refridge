import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/domain/models/shopping_list.dart';
import 'package:refridge/src/services/enums/list_sort_enum.dart';
import 'package:refridge/src/services/enums/section_display_enum.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/navigation_service.dart';
import 'package:refridge/src/settings/router/routes.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_change_list.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_sort_list.dart';
import 'package:refridge/src/views/shopping_lists_screen.dart/bloc/shopping_list_management_bloc.dart';
import 'package:refridge/src/widgetbook/buttons/primary_btn_small.dart';
import 'package:refridge/src/widgetbook/containers/empty_list.dart';
import 'package:refridge/src/widgetbook/containers/error_container.dart';
import 'package:refridge/src/widgetbook/dialogs/modal_bottom_sheet.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:refridge/src/widgetbook/tiles/sorting_header_tile.dart';
import 'package:refridge/src/widgetbook/wrappers/screen_wrapper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShoppingListsScreen extends StatelessWidget {
  const ShoppingListsScreen({super.key});

  void sortTapped(BuildContext context, dynamic selectedSort) async {
    final result = await showRFBottomSheet<ListSort>(
      context: context,
      title: AppLocalizations.of(context)!.botsheet_sort_list_title,
      builder: (context) => BotSheetSortList(
        sort: selectedSort as ListSort,
      ),
    );
    if (result != null) {
      getIt<ShoppingListManagementBloc>()
          .add(ShoppingListManagementEvent.changeSortType(result));
    }
  }

  void displayTypeTapped(SectionDisplayType type) {
    getIt<ShoppingListManagementBloc>().add(
      ShoppingListManagementEvent.changeDisplayType(type),
    );
  }

  onChangeListTapped(
    BuildContext context,
    List<ShoppingList> lists,
    ShoppingList selectedList,
  ) async {
    final result = await showRFBottomSheet<ShoppingList>(
      context: context,
      title: AppLocalizations.of(context)!.botsheet_change_list_title,
      builder: (context) => BotSheetChangeList(
        lists: lists,
        selectedList: selectedList,
      ),
    );
    if (result != null) {
      getIt<ShoppingListManagementBloc>()
          .add(ShoppingListManagementEvent.changeList(result));
    }
  }

  @override
  Widget build(BuildContext context) {
    return RFScreenWrapper(
      canBack: false,
      useExpanded: true,
      title: AppLocalizations.of(context)!.shopping_lists_screen_title,
      suffixWidget: Row(
        children: [
          PrimaryBtnSmall(
            onTap: () {},
            icon: Icons.add,
          ),
          const SizedBox(
            width: 10,
          ),
          PrimaryBtnSmall(
            onTap: () {},
            isSecondary: true,
            icon: Icons.settings,
          ),
        ],
      ),
      child:
          BlocBuilder<ShoppingListManagementBloc, ShoppingListManagementState>(
        builder: (context, state) {
          if (state.isError) {
            return ErrorContainer(
              onRetry: () => getIt<ShoppingListManagementBloc>()
                  .add(const ShoppingListManagementEvent.reload()),
            );
          }
          if (!state.isLoading && state.selectedList != null) {
            return RFPadding.normalAll(
              left: false,
              right: false,
              bottom: false,
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => onChangeListTapped(
                              context,
                              state.lists!,
                              state.selectedList!,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  state.selectedList!.title!,
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                const Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: RFColors.primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      RFPadding.xSmallVertical(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PrimaryBtnSmall(
                              onTap: () {
                                getIt<NavigationService>().navigateTo(
                                  Routes.addToListScreen,
                                  arguments: {
                                    'user': state.user,
                                    'lists': state.lists,
                                    'selectedList': state.selectedList,
                                  },
                                );
                              },
                              icon: Icons.add,
                              width: 125,
                              height: 35,
                            ),
                            PrimaryBtnSmall(
                              onTap: () {},
                              icon: Icons.share,
                              width: 125,
                              height: 35,
                            ),
                          ],
                        ),
                      ),
                      SortingHeaderTile(
                        displayType: state.displayType,
                        sortType: state.sortType,
                        onSortTapped: sortTapped,
                        onDisplayTypeTapped: displayTypeTapped,
                      ),
                    ],
                  ),
                  if (state.groceries.isEmpty)
                    RFEmptyList(
                      icon: Icons.shopping_cart,
                      label: AppLocalizations.of(context)!
                          .home_screen_list_section_no_items_label,
                      onTap: () {
                        getIt<NavigationService>().navigateTo(
                          Routes.addToListScreen,
                          arguments: {
                            'user': state.user,
                            'lists': state.lists,
                            'selectedList': state.selectedList,
                          },
                        );
                      },
                      btnLabel: AppLocalizations.of(context)!
                          .home_screen_fridge_section_no_items_btn,
                    ),
                  // if (state.groceries.isNotEmpty)
                  // Expanded(
                  //   child: GroceriesList(
                  //     groceries: state.groceries,
                  //     displayType: SectionDisplayType.grid,
                  //     onEdit: onGroceryEdit,
                  //     onAddToList: onGroceryAddToList,
                  //     onDelete: onGroceryDelete,
                  //     useMaxItems: false,
                  //     neverScrool: false,
                  //   ),
                  // ),
                ],
              ),
            );
          }

          return const Center(
            child: SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(
                color: RFColors.primaryColor,
              ),
            ),
          );
        },
      ),
    );
  }
}
