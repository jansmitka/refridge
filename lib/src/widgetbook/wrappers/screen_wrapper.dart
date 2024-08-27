import 'package:flutter/material.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:refridge/src/widgetbook/texts/screen_title.dart';

class RFScreenWrapper extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? suffixWidget;
  final bool canBack;
  final VoidCallback? onBack;
  final bool useExpanded;
  const RFScreenWrapper({
    super.key,
    required this.title,
    required this.child,
    this.suffixWidget,
    this.canBack = true,
    this.useExpanded = false,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    if (useExpanded) {
      return SafeArea(
        child: RFPadding.normalHorizontal(
          child: Column(
            children: [
              //Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScreenTitle(
                    title: title,
                    showBack: canBack,
                    onBack: onBack,
                  ),
                  if (suffixWidget != null) suffixWidget!,
                ],
              ),
              Expanded(child: child),
            ],
          ),
        ),
      );
    } else {
      return SingleChildScrollView(
        child: SafeArea(
          child: RFPadding.normalHorizontal(
            child: Column(
              children: [
                //Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ScreenTitle(
                      title: title,
                      showBack: canBack,
                      onBack: onBack,
                    ),
                    if (suffixWidget != null) suffixWidget!,
                  ],
                ),
                child,
              ],
            ),
          ),
        ),
      );
    }
  }
}
