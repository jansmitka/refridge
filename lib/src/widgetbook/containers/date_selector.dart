import 'package:flutter/material.dart';

import 'package:refridge/src/domain/extensions/datetime_extenstion.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class RFDateSelector extends StatefulWidget {
  final String hint;
  final Function(DateTime?) onChanged;
  final DateTime? date;
  const RFDateSelector({
    super.key,
    required this.hint,
    required this.onChanged,
    this.date,
  });

  @override
  State<RFDateSelector> createState() => _RFDateSelectorState();
}

class _RFDateSelectorState extends State<RFDateSelector> {
  bool _isDatePickerVisible = false;

  double _sliderValue = 0.0;

  void _toggleDatePicker() {
    setState(() {
      _isDatePickerVisible = !_isDatePickerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.date != null) {
      _sliderValue = widget.date!.difference(DateTime.now()).inDays.toDouble();
    } else {
      _sliderValue = 0.0;
    }
    return Column(
      children: [
        GestureDetector(
          onTap: _toggleDatePicker,
          child: Container(
            height: 40,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                width: 1,
                color: RFColors.greyPrimary,
              ),
            ),
            child: RFPadding.small(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.timelapse_rounded,
                        color: RFColors.infoColor,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.date != null
                            ? widget.date!.ddmmYYYY()
                            : widget.hint,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: widget.date != null
                                  ? RFColors.textPrimary
                                  : RFColors.greyPrimary,
                            ),
                      )
                    ],
                  ),
                  if (widget.date != null)
                    GestureDetector(
                      onTap: () => widget.onChanged(null),
                      child: const Icon(
                        Icons.close,
                        color: RFColors.primaryColor,
                        size: 25,
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
        RFPadding.smallVertical(
          child: AnimatedOpacity(
            opacity: _isDatePickerVisible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 100),
            child: AnimatedContainer(
              height: _isDatePickerVisible ? 50 : 0,
              duration: const Duration(milliseconds: 100),
              child: !_isDatePickerVisible
                  ? Container()
                  : Slider(
                      value: _sliderValue,
                      min: 0.0,
                      max: 21,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                        widget.onChanged(
                          DateTime.now().add(
                            Duration(days: value.toInt()),
                          ),
                        );
                      }),
            ),
          ),
        ),
      ],
    );
  }
}
