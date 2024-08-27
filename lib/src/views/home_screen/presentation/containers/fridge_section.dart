import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/services/enums/fridge_sort_enum.dart';
import 'package:refridge/src/services/enums/section_display_enum.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/fridge_screen/bloc/fridge_management_bloc.dart';
import 'package:refridge/src/views/home_screen/presentation/containers/fridge_add_bottomsheet.dart';
import 'package:refridge/src/widgetbook/buttons/small_secondary_btn.dart';
import 'package:refridge/src/widgetbook/containers/error_container.dart';
import 'package:refridge/src/widgetbook/dialogs/modal_bottom_sheet.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class FridgeSection extends StatelessWidget {
  const FridgeSection({
    super.key,
  });

  bool isAscending(FridgeSort type) {
    return type == FridgeSort.amountAsc ||
        type == FridgeSort.durabilityAsc ||
        type == FridgeSort.za;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FridgeManagementBloc, FridgeManagementState>(
      builder: (context, state) {
        if (state.isError) {
          return const ErrorContainer();
        }
        if (!state.isLoading && state.selectedFridge != null) {
          return Column(
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
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            const Icon(
                              Icons.arrow_drop_down_rounded,
                              color: RFColors.primaryColor,
                            ),
                          ],
                        ),
                      ),
                      RFPadding.smallVertical(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: RFColors.greySecondary,
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.sort,
                                  size: 15,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  state.sortType.getIcon(),
                                  color: RFColors.primaryColor,
                                ),
                                Icon(
                                  isAscending(state.sortType)
                                      ? Icons.arrow_drop_up_rounded
                                      : Icons.arrow_drop_down_rounded,
                                  color: RFColors.primaryColor,
                                ),
                              ],
                            ),
                          ),
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
                                  const FridgeAddBottomsheet());
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
            ],
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
