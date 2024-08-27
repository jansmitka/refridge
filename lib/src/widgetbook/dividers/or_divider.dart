import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Divider(
            color: RFColors.greyPrimary, // Color of the divider line
            thickness: 1.0, // Thickness of the divider line
          ),
        ),
        RFPadding.smallHorizontal(
          child: Text(
            AppLocalizations.of(context)!.or,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: RFColors.greyPrimary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const Expanded(
          child: Divider(
            color: RFColors.greyPrimary, // Color of the divider line
            thickness: 1.0, // Thickness of the divider line
          ),
        ),
      ],
    );
  }
}
