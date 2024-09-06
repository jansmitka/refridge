import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class NoResultsContainer extends StatelessWidget {
  const NoResultsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.no_food,
              color: RFColors.primaryColor,
              size: 60,
            ),
            RFPadding.normalVertical(
              child: Text(
                AppLocalizations.of(context)!.add_to_fridge_screen_no_results,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
