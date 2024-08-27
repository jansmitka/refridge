import 'package:flutter/material.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class UnitSelector extends StatefulWidget {
  final GroceryUnits selectedUnit;
  final Function(GroceryUnits) onTap;
  const UnitSelector({
    super.key,
    required this.selectedUnit,
    required this.onTap,
  });

  @override
  State<UnitSelector> createState() => _UnitSelectorState();
}

class _UnitSelectorState extends State<UnitSelector> {
  bool _isUnitSelectorVisible = false;

  void _toggleUnitSelector() {
    setState(() {
      _isUnitSelectorVisible = !_isUnitSelectorVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RFPadding.smallVertical(
          child: GestureDetector(
            onTap: _toggleUnitSelector,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: RFColors.secondaryColor,
              ),
              width: 65,
              child: RFPadding.xSmall(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        widget.selectedUnit.getLabel(context),
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: RFColors.generalBg),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                      child: Icon(
                        _isUnitSelectorVisible
                            ? Icons.arrow_drop_up_outlined
                            : Icons.arrow_drop_down,
                        color: RFColors.primaryColor,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: _isUnitSelectorVisible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 100),
          child: AnimatedContainer(
            height: _isUnitSelectorVisible ? 45 : 0,
            duration: const Duration(milliseconds: 100),
            decoration: const BoxDecoration(
              color: RFColors.greySecondary,
            ),
            child: !_isUnitSelectorVisible
                ? Container()
                : ListView(
                    scrollDirection: Axis.horizontal,
                    children: GroceryUnits.values.map((unit) {
                      final isSelected = unit == widget.selectedUnit;
                      return RFPadding.small(
                        child: GestureDetector(
                          onTap: () {
                            _toggleUnitSelector();
                            widget.onTap(unit);
                          },
                          child: Container(
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: isSelected
                                  ? RFColors.primaryColor
                                  : RFColors.greyPrimary,
                            ),
                            child: Center(
                              child: Text(
                                unit.getLabel(context),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: isSelected
                                          ? RFColors.generalBg
                                          : RFColors.textPrimary,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
          ),
        ),
      ],
    );
  }
}
