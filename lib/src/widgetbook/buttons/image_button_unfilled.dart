import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class ImageUnfilledButton extends StatefulWidget {
  final String lable;
  final String imagePath;
  final VoidCallback onTap;
  final bool isExpanded;
  const ImageUnfilledButton({
    super.key,
    required this.lable,
    required this.imagePath,
    required this.onTap,
    this.isExpanded = true,
  });

  @override
  State<ImageUnfilledButton> createState() => _ImageUnfilledButtonState();
}

class _ImageUnfilledButtonState extends State<ImageUnfilledButton> {
  @override
  Widget build(BuildContext context) {
    if (widget.isExpanded) {
      return GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1, color: RFColors.greyPrimary),
          ),
          child: RFPadding.largeHorizontal(
            child: RFPadding.smallVertical(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      widget.imagePath,
                      height: 25,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      widget.lable,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: RFColors.textSecondary,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: RFColors.greyPrimary),
        ),
        child: RFPadding.largeHorizontal(
          child: RFPadding.smallVertical(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  widget.imagePath,
                  height: 25,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  widget.lable,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: RFColors.textSecondary,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
