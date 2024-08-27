import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';

class ColoredText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool onEnd;
  final Color color;
  const ColoredText({
    super.key,
    required this.text,
    required this.style,
    this.onEnd = true,
    this.color = RFColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    // Split the text into words
    List<String> words = text.split(' ');

    // Extract the first word
    String firstWord = words.isNotEmpty ? words.first : '';

    // Extract the last word
    String lastWord = words.length > 1 ? words.last : '';

    // Extract the middle part (everything except the first and last word)
    String middlePart = '';
    if (words.length > 2) {
      middlePart = words.sublist(1, words.length - 1).join(' ');
    }

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
              text: firstWord,
              style: !onEnd ? style.copyWith(color: color) : style),
          if (middlePart != '')
            TextSpan(
              text: " $middlePart",
              style: style,
            ),
          if (lastWord != '')
            TextSpan(
              text: " $lastWord",
              style: onEnd ? style.copyWith(color: color) : style,
            ),
        ],
      ),
    );
  }
}
