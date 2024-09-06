import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/buttons/primary_btn_small.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class ErrorContainer extends StatelessWidget {
  final VoidCallback onRetry;
  const ErrorContainer({
    super.key,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.error_outline,
          size: 40,
          color: RFColors.primaryColor,
        ),
        RFPadding.smallVertical(
          child: Text(
            AppLocalizations.of(context)!.error_title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Text(
          AppLocalizations.of(context)!.error_desc,
        ),
        RFPadding.normalVertical(
          child: SizedBox(
            width: 70,
            child: PrimaryBtnSmall(
              onTap: onRetry,
              icon: Icons.refresh_rounded,
            ),
          ),
        )
      ],
    );
  }
}
