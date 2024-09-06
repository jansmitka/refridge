import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';

class PrimaryBtnSmall extends StatelessWidget {
  final VoidCallback onTap;
  final String? label;
  final IconData? icon;
  const PrimaryBtnSmall({
    super.key,
    required this.onTap,
    this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        constraints: const BoxConstraints(minWidth: 50),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: RFColors.primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                size: 18,
                color: RFColors.generalBg,
              ),
            if (label != null)
              Text(
                label ?? '',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: RFColors.generalBg,
                      fontWeight: FontWeight.bold,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
