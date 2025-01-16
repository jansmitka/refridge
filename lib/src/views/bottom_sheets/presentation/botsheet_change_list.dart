import 'package:flutter/material.dart';
import 'package:refridge/src/domain/models/shopping_list.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/containers/lists_selector.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BotSheetChangeList extends StatefulWidget {
  final List<ShoppingList> lists;
  final ShoppingList selectedList;
  const BotSheetChangeList({
    super.key,
    required this.lists,
    required this.selectedList,
  });

  @override
  State<BotSheetChangeList> createState() => _BotSheetChangeListState();
}

class _BotSheetChangeListState extends State<BotSheetChangeList> {
  late ShoppingList _selectedList;

  @override
  void initState() {
    _selectedList = widget.selectedList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RFPadding.normalHorizontal(
      child: Column(
        children: [
          ListSelector(
            lists: widget.lists,
            selectedList: _selectedList,
            onTap: (ShoppingList list) {
              setState(() {
                _selectedList = list;
              });
            },
          ),
          RFPadding.normalVertical(
            child: PrimaryTextButton(
              lable: AppLocalizations.of(context)!.botsheet_change_fridge_btn,
              onTap: () {
                Navigator.pop(context, _selectedList);
              },
            ),
          ),
        ],
      ),
    );
  }
}
