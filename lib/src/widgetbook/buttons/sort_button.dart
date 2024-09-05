import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class SortButton extends StatelessWidget {
  final IconData icon;
  final bool isAsc;
  final VoidCallback onTap;
  const SortButton({
    super.key,
    required this.icon,
    required this.isAsc,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RFPadding.smallVertical(
      child: GestureDetector(
        onTap: onTap,
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
                icon,
                color: RFColors.primaryColor,
                size: 23,
              ),
              Icon(
                isAsc
                    ? Icons.arrow_drop_up_rounded
                    : Icons.arrow_drop_down_rounded,
                color: RFColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
