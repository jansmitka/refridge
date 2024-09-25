import 'package:flutter/material.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/containers/fridge_selector.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BotSheetChangeFridge extends StatefulWidget {
  final List<Fridge> fridges;
  final Fridge selectedFridge;
  const BotSheetChangeFridge({
    super.key,
    required this.fridges,
    required this.selectedFridge,
  });

  @override
  State<BotSheetChangeFridge> createState() => _BotSheetChangeFridgeState();
}

class _BotSheetChangeFridgeState extends State<BotSheetChangeFridge> {
  late Fridge _selectedFridge;

  @override
  void initState() {
    _selectedFridge = widget.selectedFridge;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RFPadding.normalHorizontal(
      child: Column(
        children: [
          FridgeSelector(
            fridges: widget.fridges,
            selectedFridge: _selectedFridge,
            onTap: (Fridge fridge) {
              setState(() {
                _selectedFridge = fridge;
              });
            },
          ),
          RFPadding.normalVertical(
            child: PrimaryTextButton(
              lable: AppLocalizations.of(context)!.botsheet_change_fridge_btn,
              onTap: () {
                Navigator.pop(context, _selectedFridge);
              },
            ),
          ),
        ],
      ),
    );
  }
}
