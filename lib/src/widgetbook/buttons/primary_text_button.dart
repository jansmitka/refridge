import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class PrimaryTextButton extends StatelessWidget {
  final String lable;
  final VoidCallback onTap;
  final bool isExpanded;
  final bool isLoading;

  const PrimaryTextButton({
    super.key,
    required this.lable,
    required this.onTap,
    this.isExpanded = true,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isExpanded) {
      return GestureDetector(
        onTap: isLoading ? null : onTap,
        child: Container(
          decoration: BoxDecoration(
            color: RFColors.primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: RFPadding.largeHorizontal(
            child: RFPadding.smallVertical(
              child: Center(
                child: isLoading
                    ? const SizedBox(
                        width: 23,
                        height: 23,
                        child: CircularProgressIndicator(
                          color: RFColors.generalBg,
                          strokeWidth: 2,
                        ),
                      )
                    : Text(
                        lable,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: RFColors.generalBg),
                      ),
              ),
            ),
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: isLoading ? null : onTap,
      child: Container(
        decoration: BoxDecoration(
          color: RFColors.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: RFPadding.largeHorizontal(
          child: RFPadding.smallVertical(
            child: isLoading
                ? const SizedBox(
                    width: 23,
                    height: 23,
                    child: CircularProgressIndicator(
                      color: RFColors.generalBg,
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    lable,
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: RFColors.generalBg),
                  ),
          ),
        ),
      ),
    );
  }
}
