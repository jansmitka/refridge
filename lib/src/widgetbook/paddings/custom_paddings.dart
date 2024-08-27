import 'package:flutter/material.dart';

class RFPadding extends StatelessWidget {
  static const paddingXSmall = 4.0;
  static const paddingSmall = 8.0;
  static const paddingNormal = 16.0;
  static const paddingLarge = 24.0;
  static const paddingXLarge = 32.0;

  final Widget child;
  final bool left;
  final bool right;
  final bool top;
  final bool bottom;
  final double padding;

  const RFPadding._(
    this.child, {
    super.key,
    required this.padding,
    required this.left,
    required this.right,
    required this.top,
    required this.bottom,
  });

  const RFPadding.xSmall({
    required Widget child,
    Key? key,
    bool left = true,
    bool right = true,
    bool top = true,
    bool bottom = true,
  }) : this._(
          child,
          padding: paddingXSmall,
          left: left,
          right: right,
          bottom: bottom,
          top: top,
          key: key,
        );

  const RFPadding.xSmallHorizontal({required Widget child, Key? key})
      : this._(
          child,
          padding: paddingXSmall,
          left: true,
          right: true,
          bottom: false,
          top: false,
          key: key,
        );

  const RFPadding.xSmallVertical({required Widget child, Key? key})
      : this._(
          child,
          padding: paddingXSmall,
          left: false,
          right: false,
          bottom: true,
          top: true,
          key: key,
        );

  const RFPadding.small({
    required Widget child,
    Key? key,
    bool left = true,
    bool right = true,
    bool top = true,
    bool bottom = true,
  }) : this._(
          child,
          padding: paddingSmall,
          left: left,
          right: right,
          bottom: bottom,
          top: top,
          key: key,
        );

  const RFPadding.smallHorizontal({required Widget child, Key? key})
      : this._(
          child,
          padding: paddingSmall,
          left: true,
          right: true,
          bottom: false,
          top: false,
          key: key,
        );

  const RFPadding.smallVertical({required Widget child, Key? key})
      : this._(
          child,
          padding: paddingSmall,
          left: false,
          right: false,
          bottom: true,
          top: true,
          key: key,
        );

  const RFPadding.normalAll({
    required Widget child,
    Key? key,
    bool left = true,
    bool right = true,
    bool top = true,
    bool bottom = true,
  }) : this._(child,
            padding: paddingNormal,
            left: left,
            right: right,
            bottom: bottom,
            top: top,
            key: key);

  const RFPadding.normalHorizontal({required Widget child, Key? key})
      : this._(child,
            padding: paddingNormal,
            left: true,
            right: true,
            bottom: false,
            top: false,
            key: key);

  const RFPadding.normalVertical({required Widget child, Key? key})
      : this._(child,
            padding: paddingNormal,
            left: false,
            right: false,
            bottom: true,
            top: true,
            key: key);

  const RFPadding.large({
    required Widget child,
    Key? key,
    bool left = true,
    bool right = true,
    bool top = true,
    bool bottom = true,
  }) : this._(child,
            padding: paddingLarge,
            left: left,
            right: right,
            bottom: bottom,
            top: top,
            key: key);

  const RFPadding.largeHorizontal({required Widget child, Key? key})
      : this._(child,
            padding: paddingLarge,
            left: true,
            right: true,
            bottom: false,
            top: false,
            key: key);

  const RFPadding.largeVertical({required Widget child, Key? key})
      : this._(child,
            padding: paddingLarge,
            left: false,
            right: false,
            bottom: true,
            top: true,
            key: key);

  const RFPadding.xLarge({
    required Widget child,
    Key? key,
    bool left = true,
    bool right = true,
    bool top = true,
    bool bottom = true,
  }) : this._(child,
            padding: paddingXLarge,
            left: left,
            right: right,
            bottom: bottom,
            top: top,
            key: key);

  const RFPadding.xLargeHorizontal({required Widget child, Key? key})
      : this._(child,
            padding: paddingXLarge,
            left: true,
            right: true,
            bottom: false,
            top: false,
            key: key);

  const RFPadding.xLargeVertical({required Widget child, Key? key})
      : this._(child,
            padding: paddingXLarge,
            left: false,
            right: false,
            bottom: true,
            top: true,
            key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        left ? padding : 0,
        top ? padding : 0,
        right ? padding : 0,
        bottom ? padding : 0,
      ),
      child: child,
    );
  }
}
