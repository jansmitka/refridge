import 'package:flutter/material.dart';
import 'package:refridge/src/domain/models/shopping_list.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class ListSelector extends StatelessWidget {
  final List<ShoppingList> lists;
  final ShoppingList selectedList;
  final Function(ShoppingList) onTap;

  const ListSelector({
    super.key,
    required this.lists,
    required this.selectedList,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: lists
          .map(
            (list) => ListContainer(
              list: list,
              isSelected: list == selectedList,
              onTap: onTap,
            ),
          )
          .toList(),
    );
  }
}

class ListContainer extends StatelessWidget {
  final ShoppingList list;
  final bool isSelected;
  final Function(ShoppingList) onTap;

  const ListContainer({
    super.key,
    required this.list,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RFPadding.xSmallVertical(
      child: GestureDetector(
        onTap: () => onTap(list),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? RFColors.primaryColor : RFColors.greySecondary,
            borderRadius: BorderRadius.circular(25),
          ),
          child: RFPadding.small(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.kitchen_outlined,
                      color: isSelected
                          ? RFColors.generalBg
                          : RFColors.greyPrimary,
                      size: 30,
                    ),
                    RFPadding.smallHorizontal(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list.title!,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: isSelected
                                      ? RFColors.generalBg
                                      : RFColors.greyPrimary,
                                ),
                          ),
                          // Text(
                          //   list.type!.getTitle(context),
                          //   style:
                          //       Theme.of(context).textTheme.bodySmall!.copyWith(
                          //             fontStyle: FontStyle.italic,
                          //             color: isSelected
                          //                 ? RFColors.generalBg
                          //                 : RFColors.greyPrimary,
                          //           ),
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.groups_outlined,
                      color: isSelected
                          ? RFColors.generalBg
                          : RFColors.greyPrimary,
                    ),
                    RFPadding.smallHorizontal(
                      child: Text(
                        list.users!.length.toString(),
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: isSelected
                                      ? RFColors.generalBg
                                      : RFColors.greyPrimary,
                                ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
