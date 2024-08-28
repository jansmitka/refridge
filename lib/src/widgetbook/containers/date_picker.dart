import 'package:flutter/material.dart';
import 'package:refridge/src/domain/extensions/datetime_extenstion.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class RFDatePicker extends StatefulWidget {
  final String hint;
  final Function(DateTime?) onChanged;
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
  bool _isDatePickerVisible = false;

  void _toggleDatePicker() {
    setState(() {
      _isDatePickerVisible = !_isDatePickerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
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
              height: _isDatePickerVisible ? 150 : 0,
              duration: const Duration(milliseconds: 100),
              decoration: const BoxDecoration(
                color: RFColors.greySecondary,
              ),
              child: !_isDatePickerVisible
                  ? Container()
                  : ScrollDatePicker(
                      viewType: const [
                        DatePickerViewType.day,
                        DatePickerViewType.month,
                        DatePickerViewType.year
                      ],
                      scrollViewOptions: DatePickerScrollViewOptions.all(
                        const ScrollViewDetailOptions(
                          margin: EdgeInsets.symmetric(
                            horizontal: 8,
                          ),
                        ),
                      ),
                      selectedDate: widget.date ?? DateTime.now(),
                      minimumDate: DateTime.now(),
                      maximumDate:
                          DateTime.now().add(const Duration(days: 365)),
                      locale: const Locale('cs'),
                      onDateTimeChanged: (DateTime value) =>
                          widget.onChanged(value),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
