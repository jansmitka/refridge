import 'package:flutter/material.dart';
import 'package:refridge/src/services/enums/fridge_sort_enum.dart';
import 'package:refridge/src/services/enums/list_sort_enum.dart';
import 'package:refridge/src/services/enums/section_display_enum.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/buttons/sort_button.dart';

class SortingHeaderTile extends StatelessWidget {
  final SectionDisplayType displayType;
  final dynamic sortType;
  final Function(
    BuildContext,
    dynamic,
  ) onSortTapped;
  final Function(SectionDisplayType) onDisplayTypeTapped;
  const SortingHeaderTile({
    super.key,
    required this.displayType,
    required this.sortType,
    required this.onSortTapped,
    required this.onDisplayTypeTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (sortType is FridgeSort)
          SortButton(
            icon: (sortType as FridgeSort).getIcon(),
            isAsc: (sortType as FridgeSort).isAscending(),
            onTap: () => onSortTapped(
              context,
              sortType,
            ),
          ),
        if (sortType is ListSort)
          SortButton(
            icon: (sortType as ListSort).getIcon(),
            isAsc: (sortType as ListSort).isAscending(),
            onTap: () => onSortTapped(
              context,
              sortType,
            ),
          ),
        Row(
          children: [
            GestureDetector(
              onTap: () => onDisplayTypeTapped(SectionDisplayType.grid),
              child: SizedBox(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.grid_view_outlined,
                  size: 20,
                  color: displayType == SectionDisplayType.grid
                      ? RFColors.primaryColor
                      : RFColors.textPrimary,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => onDisplayTypeTapped(SectionDisplayType.list),
              child: SizedBox(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.list_rounded,
                  size: 20,
                  color: displayType == SectionDisplayType.list
                      ? RFColors.primaryColor
                      : RFColors.textPrimary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
