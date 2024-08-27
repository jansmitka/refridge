import 'package:flutter/material.dart';
import 'package:refridge/src/widgetbook/texts/colored_text.dart';

class ScreenTitle extends StatelessWidget {
  final String title;
  final bool showBack;
  final bool coleredEnd;
  final VoidCallback? onBack;
  const ScreenTitle({
    super.key,
    required this.title,
    this.showBack = true,
    this.coleredEnd = true,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showBack)
          IconButton(
            onPressed: onBack,
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ColoredText(
          text: title,
          onEnd: true,
          style: Theme.of(context).textTheme.headlineMedium!,
        )
      ],
    );
  }
}
