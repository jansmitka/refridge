import 'package:flutter/material.dart';
import 'package:refridge/src/domain/extensions/groceries_extension.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/widgetbook/containers/date_picker.dart';
import 'package:refridge/src/widgetbook/containers/unit_selector.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/input_fields/amount_increase_fiels.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddGroceryBottomSheet extends StatefulWidget {
  final Grocery grocery;
  const AddGroceryBottomSheet({
    super.key,
    required this.grocery,
  });

  @override
  State<AddGroceryBottomSheet> createState() => _AddGroceryBottomSheetState();
}

class _AddGroceryBottomSheetState extends State<AddGroceryBottomSheet> {
  int _selectedAmountPcs = 1;
  int _selectedAmountKg = 1;
  int _selectedAmountL = 1;
  double _selectedAmountG = 500.0;
  double _selectedAmountMl = 500.0;
  DateTime? _expirationDate;

  GroceryUnits _selectedUnit = GroceryUnits.kg;

  @override
  void initState() {
    super.initState();
    _selectedUnit = widget.grocery.unit!;
  }

  void amountIncrease() {
    setState(() {
      switch (widget.grocery.unit!) {
        case GroceryUnits.pcs:
          _selectedAmountPcs++;
          break;
        case GroceryUnits.kg:
          _selectedAmountKg++;
          break;
        case GroceryUnits.l:
          _selectedAmountL++;
          break;
        default:
          _selectedAmountPcs++;
      }
    });
  }

  void amountDecrease() {
    if (widget.grocery.unit! == GroceryUnits.pcs && _selectedAmountPcs > 1) {
      setState(() {
        _selectedAmountPcs--;
      });
    }
    if (widget.grocery.unit! == GroceryUnits.kg && _selectedAmountKg > 1) {
      setState(() {
        _selectedAmountKg--;
      });
    }
    if (widget.grocery.unit! == GroceryUnits.l && _selectedAmountL > 1) {
      setState(() {
        _selectedAmountL--;
      });
    }
  }

  void amountChanged(double value) {
    setState(() {
      switch (widget.grocery.unit!) {
        case GroceryUnits.ml:
          _selectedAmountMl = value;
          break;
        case GroceryUnits.g:
          _selectedAmountG = value;
          break;
        default:
          _selectedAmountMl = value;
      }
    });
  }

  void onExpirationChanged(DateTime? date) {
    setState(() {
      _expirationDate = date;
    });
  }

  void setGroceryUnit(GroceryUnits unit) async {
    setState(() {
      _selectedUnit = unit;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(widget.grocery.imagePath!),
        Text(
          widget.grocery.getLabel(context),
          style: Theme.of(context).textTheme.headlineMedium!,
        ),
        UnitSelector(
          selectedUnit: _selectedUnit,
          onTap: setGroceryUnit,
        ),
        if (_selectedUnit == GroceryUnits.pcs ||
            _selectedUnit == GroceryUnits.kg ||
            _selectedUnit == GroceryUnits.l)
          RFPadding.normalVertical(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AmountIncreaseField(
                  amount: _selectedUnit == GroceryUnits.pcs
                      ? _selectedAmountPcs
                      : _selectedUnit == GroceryUnits.kg
                          ? _selectedAmountKg
                          : _selectedAmountL,
                  onIncrease: amountIncrease,
                  onDecrease: amountDecrease,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  _selectedUnit.getLabel(context),
                  style: Theme.of(context).textTheme.bodyLarge!,
                )
              ],
            ),
          ),
        if (_selectedUnit == GroceryUnits.ml || _selectedUnit == GroceryUnits.g)
          RFPadding.normalVertical(
            child: Column(
              children: [
                Text(
                  _selectedUnit == GroceryUnits.ml
                      ? "$_selectedAmountMl ${_selectedUnit.getLabel(context)}"
                      : "$_selectedAmountG ${_selectedUnit.getLabel(context)}",
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
                Slider(
                  value: _selectedUnit == GroceryUnits.ml
                      ? _selectedAmountMl
                      : _selectedAmountG,
                  min: 0.0,
                  max: 2000,
                  divisions: 200,
                  onChanged: (value) => amountChanged(value),
                ),
              ],
            ),
          ),
        RFDatePicker(
          hint: AppLocalizations.of(context)!
              .add_item_to_fridge_bottom_expiration,
          date: _expirationDate,
          onChanged: onExpirationChanged,
        ),
        RFPadding.normalAll(
          child: PrimaryTextButton(
            lable: AppLocalizations.of(context)!.add_item_to_fridge_bottom_add,
            onTap: () {
              double amount = 0;
              switch (_selectedUnit) {
                case GroceryUnits.g:
                  amount = _selectedAmountG;
                  break;
                case GroceryUnits.kg:
                  amount = _selectedAmountKg.toDouble();
                  break;
                case GroceryUnits.l:
                  amount = _selectedAmountL.toDouble();
                  break;
                case GroceryUnits.ml:
                  amount = _selectedAmountMl;
                  break;
                case GroceryUnits.pcs:
                  amount = _selectedAmountPcs.toDouble();
                  break;
              }
              final grocery = widget.grocery.copyWith(
                unit: _selectedUnit,
                amount: amount,
                expirationDate: _expirationDate,
              );
              Navigator.pop(context, grocery);
            },
          ),
        ),
      ],
    );
  }
}
