import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/services/enums/fridge_sort_enum.dart';
import 'package:refridge/src/services/enums/section_display_enum.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_add_to_fridge.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_sort_fridge.dart';
import 'package:refridge/src/views/fridge_screen/bloc/fridge_management_bloc.dart';
import 'package:refridge/src/views/bottom_sheets/presentation/botsheet_add_to_fridge_selector.dart';
import 'package:refridge/src/views/main_screen/blocs/main_bloc.dart';
import 'package:refridge/src/widgetbook/buttons/secondary_btn_small.dart';
import 'package:refridge/src/widgetbook/buttons/sort_button.dart';
import 'package:refridge/src/widgetbook/containers/error_container.dart';
import 'package:refridge/src/widgetbook/containers/groceries_list.dart';
import 'package:refridge/src/widgetbook/dialogs/modal_bottom_sheet.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class FridgeSection extends StatefulWidget {
  const FridgeSection({
    super.key,
  });

  @override
  State<FridgeSection> createState() => _FridgeSectionState();
}

class _FridgeSectionState extends State<FridgeSection> {
  void sortTapped(BuildContext context, FridgeSort selectedSort) async {
    final result = await showRFBottomSheet<FridgeSort>(
      context: context,
      title: AppLocalizations.of(context)!.botsheet_sort_fridge_title,
      builder: (context) => BotSheetSortFridge(
        sort: selectedSort,
      ),
    );
    if (result != null) {
      getIt<FridgeManagementBloc>()
          .add(FridgeManagementEvent.changeSortType(result));
    }
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
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
                        SortButton(
                          icon: state.sortType.getIcon(),
                          isAsc: state.sortType.isAscending(),
                          onTap: () => sortTapped(
                            context,
                            state.sortType,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
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
                        RFPadding.smallVertical(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () => getIt<FridgeManagementBloc>().add(
                                  const FridgeManagementEvent.changeDisplayType(
                                      SectionDisplayType.grid),
                                ),
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Icon(
                                    Icons.grid_view_outlined,
                                    size: 20,
                                    color: state.displayType ==
                                            SectionDisplayType.grid
                                        ? RFColors.primaryColor
                                        : RFColors.textPrimary,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => getIt<FridgeManagementBloc>().add(
                                  const FridgeManagementEvent.changeDisplayType(
                                      SectionDisplayType.list),
                                ),
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Icon(
                                    Icons.list_rounded,
                                    size: 20,
                                    color: state.displayType ==
                                            SectionDisplayType.list
                                        ? RFColors.primaryColor
                                        : RFColors.textPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: GroceriesList(
                    groceries: state.groceries,
                    displayType: SectionDisplayType.grid,
                    onEdit: onGroceryEdit,
                    onAddToList: onGroceryAddToList,
                    onDelete: onGroceryDelete,
                    useMaxItems: true,
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
