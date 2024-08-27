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
  Grocery grocery;
  AddGroceryBottomSheet({
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
  DateTime? _expirationDate = null;

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
      widget.grocery = widget.grocery.copyWith(unit: unit);
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
          selectedUnit: widget.grocery.unit!,
          onTap: setGroceryUnit,
        ),
        if (widget.grocery.unit == GroceryUnits.pcs ||
            widget.grocery.unit == GroceryUnits.kg ||
            widget.grocery.unit == GroceryUnits.l)
          RFPadding.normalVertical(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AmountIncreaseField(
                  amount: widget.grocery.unit == GroceryUnits.pcs
                      ? _selectedAmountPcs
                      : widget.grocery.unit == GroceryUnits.kg
                          ? _selectedAmountKg
                          : _selectedAmountL,
                  onIncrease: amountIncrease,
                  onDecrease: amountDecrease,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  widget.grocery.unit!.getLabel(context),
                  style: Theme.of(context).textTheme.bodyLarge!,
                )
              ],
            ),
          ),
        if (widget.grocery.unit == GroceryUnits.ml ||
            widget.grocery.unit == GroceryUnits.g)
          RFPadding.normalVertical(
            child: Column(
              children: [
                Text(widget.grocery.unit == GroceryUnits.ml
                    ? "$_selectedAmountMl ${widget.grocery.unit!.getLabel(context)}"
                    : "$_selectedAmountG ${widget.grocery.unit!.getLabel(context)}"),
                Slider(
                  value: widget.grocery.unit == GroceryUnits.ml
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
          hint: 'Expiration date',
          onChanged: onExpirationChanged,
        ),
        RFPadding.normalAll(
          child: PrimaryTextButton(
            lable: AppLocalizations.of(context)!.add_item_to_fridge_bottom_add,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
