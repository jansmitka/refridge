import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';

class PrimaryBtnSmall extends StatelessWidget {
  final VoidCallback onTap;
  final String? label;
  final IconData? icon;
  final double? width;
  final double? height;
  final bool isSecondary;
  const PrimaryBtnSmall({
    super.key,
    required this.onTap,
    this.label,
    this.icon,
    this.width,
    this.height,
    this.isSecondary = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        constraints: width == null ? const BoxConstraints(minWidth: 50) : null,
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: isSecondary ? RFColors.secondaryColor : RFColors.primaryColor,
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
