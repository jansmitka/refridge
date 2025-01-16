import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/services/enums/fridge_sort_enum.dart';
import 'package:refridge/src/services/enums/section_display_enum.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_add_to_fridge.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_change_fridge.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_sort_fridge.dart';
import 'package:refridge/src/views/fridge_screen/bloc/fridge_management_bloc.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_add_to_fridge_selector.dart';
import 'package:refridge/src/views/main_screen/blocs/main_bloc.dart';
import 'package:refridge/src/widgetbook/buttons/secondary_btn_small.dart';
import 'package:refridge/src/widgetbook/containers/empty_list.dart';
import 'package:refridge/src/widgetbook/containers/error_container.dart';
import 'package:refridge/src/widgetbook/containers/groceries_list.dart';
import 'package:refridge/src/widgetbook/dialogs/modal_bottom_sheet.dart';
import 'package:refridge/src/widgetbook/tiles/sorting_header_tile.dart';

class FridgeSection extends StatefulWidget {
  const FridgeSection({
    super.key,
  });

  @override
  State<FridgeSection> createState() => _FridgeSectionState();
}

class _FridgeSectionState extends State<FridgeSection> {
  void sortTapped(BuildContext context, dynamic selectedSort) async {
    final result = await showRFBottomSheet<FridgeSort>(
      context: context,
      title: AppLocalizations.of(context)!.botsheet_sort_fridge_title,
      builder: (context) => BotSheetSortFridge(
        sort: selectedSort as FridgeSort,
      ),
    );
    if (result != null) {
      getIt<FridgeManagementBloc>()
          .add(FridgeManagementEvent.changeSortType(result));
    }
  }

  void displayTypeTapped(SectionDisplayType type) {
    getIt<FridgeManagementBloc>().add(
      FridgeManagementEvent.changeDisplayType(type),
    );
  }

  void onGroceryEdit(Grocery grocery) async {
    final result = await showRFBottomSheet<Grocery>(
      context: context,
      title: AppLocalizations.of(context)!.edit_item_to_fridge_bottom_title,
      builder: (context) => BotSheetAddToFridge(
        grocery: grocery,
        btnLabel: AppLocalizations.of(context)!.edit_item_to_fridge_bottom_add,
        succesLabel:
            AppLocalizations.of(context)!.edit_item_to_fridge_bottom_complete,
        showSucces: false,
      ),
    );
    if (result != null) {
      getIt<FridgeManagementBloc>()
          .add(FridgeManagementEvent.editGrocery(result));
    }
  }

  onChangeFridgeTapped(
    List<Fridge> fridges,
    Fridge selectedFridge,
  ) async {
    final result = await showRFBottomSheet<Fridge>(
      context: context,
      title: AppLocalizations.of(context)!.botsheet_change_fridge_title,
      builder: (context) => BotSheetChangeFridge(
        fridges: fridges,
        selectedFridge: selectedFridge,
      ),
    );
    if (result != null) {
      getIt<FridgeManagementBloc>()
          .add(FridgeManagementEvent.changeFridge(result));
    }
  }

  void onGroceryAddToList(Grocery grocery) async {
    print('---Add To List');
  }

  void onGroceryDelete(Grocery grocery) async {
    getIt<FridgeManagementBloc>()
        .add(FridgeManagementEvent.deleteGrocery(grocery));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FridgeManagementBloc, FridgeManagementState>(
      builder: (context, state) {
        if (state.isError) {
          return ErrorContainer(
            onRetry: () => getIt<FridgeManagementBloc>()
                .add(const FridgeManagementEvent.reload()),
          );
        }
        if (!state.isLoading && state.selectedFridge != null) {
          return SizedBox(
            height: 507,
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => onChangeFridgeTapped(
                            state.fridges!,
                            state.selectedFridge!,
                          ),
                          child: Row(
                            children: [
                              Text(
                                state.selectedFridge!.title!,
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
                        SecondaryBtnSmall(
                          onTap: () async {
                            await showRFBottomSheet<bool>(
                                context: context,
                                title: AppLocalizations.of(context)!
                                    .add_fridge_bottom_sheet_title,
                                builder: (context) =>
                                    const BotSheetAddToFridgeSelector());
                          },
                          icon: Icons.add,
                        ),
                      ],
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
                    icon: Icons.kitchen,
                    label: AppLocalizations.of(context)!
                        .home_screen_fridge_section_no_items_label,
                    onTap: () async {
                      await showRFBottomSheet<bool>(
                          context: context,
                          title: AppLocalizations.of(context)!
                              .add_fridge_bottom_sheet_title,
                          builder: (context) =>
                              const BotSheetAddToFridgeSelector());
                    },
                    btnLabel: AppLocalizations.of(context)!
                        .home_screen_fridge_section_no_items_btn,
                  ),
                Expanded(
                  child: GroceriesList(
                    groceries: state.groceries,
                    displayType: SectionDisplayType.grid,
                    onEdit: onGroceryEdit,
                    onAddToList: onGroceryAddToList,
                    onDelete: onGroceryDelete,
                    useMaxItems: false,
                    neverScrool: true,
                  ),
                ),
                if (state.groceries.length > 9)
                  GestureDetector(
                    onTap: () => getIt<MainBloc>()
                      ..add(
                        const MainEvent.setScreenState(ScreenState.fridges),
                      ),
                    child: const Icon(
                      Icons.more_horiz,
                      size: 40,
                      color: RFColors.greyPrimary,
                    ),
                  ),
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
    );
  }
}
