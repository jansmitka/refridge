import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class RFEmptyList extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final String? btnLabel;
  const RFEmptyList({
    super.key,
    required this.icon,
    required this.label,
    this.onTap,
    this.btnLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: RFColors.primaryColor,
              size: 60,
            ),
            RFPadding.normalVertical(
              child: Text(label, style: Theme.of(context).textTheme.bodyLarge!),
            ),
            if (onTap != null && btnLabel != null)
              PrimaryTextButton(
                lable: btnLabel!,
                onTap: onTap!,
                isExpanded: false,
              ),
          ],
        ),
      ),
    );
  }
}
