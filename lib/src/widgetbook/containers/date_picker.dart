import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class RFDatePicker extends StatefulWidget {
  final String hint;
  final Function(DateTime) onChanged;
  final DateTime? date;
  const RFDatePicker({
    super.key,
    required this.hint,
    required this.onChanged,
    this.date,
  });

  @override
  State<RFDatePicker> createState() => _RFDatePickerState();
}

class _RFDatePickerState extends State<RFDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 1),
          ),
          child: RFPadding.small(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.timelapse_rounded,
                      size: 25,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      widget.date != null
                          ? widget.date.toString()
                          : widget.hint,
                      style: Theme.of(context).textTheme.bodyMedium!,
                    )
                  ],
                ),
                GestureDetector(
                  child: Icon(
                    Icons.close,
                    color: RFColors.primaryColor,
                    size: 25,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
