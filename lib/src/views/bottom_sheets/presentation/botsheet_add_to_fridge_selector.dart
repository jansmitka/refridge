import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/navigation_service.dart';
import 'package:refridge/src/settings/router/routes.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/fridge_screen/bloc/fridge_management_bloc.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class BotSheetAddToFridgeSelector extends StatelessWidget {
  const BotSheetAddToFridgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final state = getIt<FridgeManagementBloc>().state;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: RFColors.primaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add_a_photo_outlined,
                  color: RFColors.generalBg,
                ),
                RFPadding.small(
                  bottom: false,
                  child: Text(
                    AppLocalizations.of(context)!.add_fridge_bottom_sheet_ai,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: RFColors.generalBg,
                        ),
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
            getIt<NavigationService>().navigateTo(
              Routes.addToFridgeScreen,
              arguments: {
                'user': state.user,
                'fridges': state.fridges,
                'selectedFridge': state.selectedFridge,
              },
            );
          },
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: RFColors.primaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.pan_tool_outlined,
                  color: RFColors.generalBg,
                ),
                RFPadding.small(
                  bottom: false,
                  child: Text(
                    AppLocalizations.of(context)!
                        .add_fridge_bottom_sheet_manual,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: RFColors.generalBg,
                        ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
