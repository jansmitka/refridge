import 'package:flutter/material.dart';
import 'package:refridge/src/services/enums/fridge_sort_enum.dart';
import 'package:refridge/src/services/enums/list_sort_enum.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/buttons/sort_type_button.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BotSheetSortList extends StatefulWidget {
  final ListSort sort;
  const BotSheetSortList({
    super.key,
    required this.sort,
  });

  @override
  State<BotSheetSortList> createState() => _BotSheetSortListState();
}

class _BotSheetSortListState extends State<BotSheetSortList> {
  ListSort selectedSort = ListSort.az;

  @override
  void initState() {
    super.initState();
    selectedSort = widget.sort;
  }

  void selectSort(ListSort sort) {
    setState(() {
      selectedSort = sort;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RFPadding.largeHorizontal(
          child: SizedBox(
            height: 75,
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 4,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              children: ListSort.values
                  .map(
                    (type) => SortTypeButton(
                      icon: type.getIcon(),
                      isAsc: type.isAscending(),
                      isSelected: selectedSort == type,
                      onTap: () => selectSort(type),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        RFPadding.normalAll(
          child: PrimaryTextButton(
            lable: AppLocalizations.of(context)!.botsheet_sort_fridge_btn,
            onTap: () {
              Navigator.pop(context, selectedSort);
            },
          ),
        ),
      ],
    );
  }
}
