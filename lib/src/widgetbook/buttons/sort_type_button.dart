import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class SortTypeButton extends StatelessWidget {
  final IconData icon;
  final bool isAsc;
  final bool isSelected;
  final VoidCallback onTap;
  const SortTypeButton({
    super.key,
    required this.icon,
    required this.isAsc,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? RFColors.primaryColor : RFColors.generalBg,
          border: Border.all(
            width: 1,
            color: isSelected ? RFColors.primaryColor : RFColors.greyPrimary,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child: RFPadding.small(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
                color:
                    isSelected ? RFColors.generalBg : RFColors.secondaryColor,
              ),
              const SizedBox(
                width: 4,
              ),
              Icon(
                isAsc
                    ? Icons.arrow_drop_up_rounded
                    : Icons.arrow_drop_down_rounded,
                color: isSelected ? RFColors.generalBg : RFColors.primaryColor,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
