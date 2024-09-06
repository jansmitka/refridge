import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class EmptySelectorContainer extends StatelessWidget {
  const EmptySelectorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.kitchen,
              color: RFColors.primaryColor,
              size: 60,
            ),
            RFPadding.normalVertical(
              child: Text(
                AppLocalizations.of(context)!
                    .add_to_fridge_screen_nothing_in_fridge,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
