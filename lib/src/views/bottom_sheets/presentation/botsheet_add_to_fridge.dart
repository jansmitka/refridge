import 'package:flutter/material.dart';
import 'package:refridge/src/domain/extensions/groceries_extension.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/containers/date_selector.dart';
import 'package:refridge/src/widgetbook/containers/unit_selector.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/input_fields/amount_increase_fiels.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BotSheetAddToFridge extends StatefulWidget {
  final Grocery grocery;
  final String btnLabel;
  final String succesLabel;
  final bool showSucces;
  const BotSheetAddToFridge({
    super.key,
    required this.grocery,
    required this.btnLabel,
    required this.succesLabel,
    this.showSucces = true,
  });

  @override
  State<BotSheetAddToFridge> createState() => _BotSheetAddToFridgeState();
}

class _BotSheetAddToFridgeState extends State<BotSheetAddToFridge> {
  int _selectedAmountPcs = 1;
  int _selectedAmountKg = 1;
  int _selectedAmountL = 1;
  double _selectedAmountG = 500.0;
  double _selectedAmountMl = 500.0;
  DateTime? _expirationDate;

  bool _isCompleted = false;

  GroceryUnits _selectedUnit = GroceryUnits.kg;

  @override
  void initState() {
    super.initState();
    _selectedUnit = widget.grocery.unit!;
    if (widget.grocery.amount != null) {
      switch (_selectedUnit) {
        case GroceryUnits.pcs:
          _selectedAmountPcs = widget.grocery.amount!.toInt();
          break;
        case GroceryUnits.kg:
          _selectedAmountKg = widget.grocery.amount!.toInt();
          break;
        case GroceryUnits.l:
          _selectedAmountL = widget.grocery.amount!.toInt();
          break;
        case GroceryUnits.g:
          _selectedAmountG = widget.grocery.amount!;
          break;
        case GroceryUnits.ml:
          _selectedAmountMl = widget.grocery.amount!;
          break;
      }
    }
    _expirationDate = widget.grocery.expirationDate;
  }

  void amountIncrease() {
    setState(() {
      switch (_selectedUnit) {
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
    if (_selectedUnit == GroceryUnits.pcs && _selectedAmountPcs > 1) {
      setState(() {
        _selectedAmountPcs--;
      });
    }
    if (_selectedUnit == GroceryUnits.kg && _selectedAmountKg > 1) {
      setState(() {
        _selectedAmountKg--;
      });
    }
    if (_selectedUnit == GroceryUnits.l && _selectedAmountL > 1) {
      setState(() {
        _selectedAmountL--;
      });
    }
  }

  void amountChanged(double value) {
    setState(() {
      switch (_selectedUnit) {
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
    if (_isCompleted && widget.showSucces) {
      return Column(
        children: [
          const Icon(
            Icons.check_circle_outline,
            size: 50,
            color: RFColors.successColor,
          ),
          RFPadding.smallVertical(
            child: Text(
              widget.succesLabel,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          RFPadding.normalAll(
            child: PrimaryTextButton(
              lable: widget.btnLabel,
              isLoading: true,
              onTap: () {},
            ),
          ),
        ],
      );
    }
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _selectedUnit.getUnit(context),
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
                RFPadding.smallVertical(
                  child: AmountIncreaseField(
                    amount: _selectedUnit == GroceryUnits.pcs
                        ? _selectedAmountPcs
                        : _selectedUnit == GroceryUnits.kg
                            ? _selectedAmountKg
                            : _selectedAmountL,
                    onIncrease: amountIncrease,
                    onDecrease: amountDecrease,
                  ),
                ),
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
        RFDateSelector(
          hint: AppLocalizations.of(context)!
              .add_item_to_fridge_bottom_expiration,
          date: _expirationDate,
          onChanged: onExpirationChanged,
        ),
        RFPadding.normalAll(
          child: PrimaryTextButton(
            lable: widget.btnLabel,
            onTap: () async {
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

              if (widget.showSucces) {
                setState(() {
                  _isCompleted = true;
                });
                await Future.delayed(const Duration(seconds: 1)).then((val) {
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context, grocery);
                });
              } else {
                Navigator.pop(context, grocery);
              }
            },
          ),
        ),
      ],
    );
  }
}
