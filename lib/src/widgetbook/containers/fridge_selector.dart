import 'package:flutter/material.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/services/enums/fridge_type_enum.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class FridgeSelector extends StatelessWidget {
  final List<Fridge> fridges;
  final Fridge selectedFridge;
  final Function(Fridge) onTap;

  const FridgeSelector({
    super.key,
    required this.fridges,
    required this.selectedFridge,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: fridges
          .map(
            (fridge) => FridgeContainer(
              fridge: fridge,
              isSelected: fridge == selectedFridge,
              onTap: onTap,
            ),
          )
          .toList(),
    );
  }
}

class FridgeContainer extends StatelessWidget {
  final Fridge fridge;
  final bool isSelected;
  final Function(Fridge) onTap;

  const FridgeContainer({
    super.key,
    required this.fridge,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RFPadding.xSmallVertical(
      child: GestureDetector(
        onTap: () => onTap(fridge),
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
                            fridge.title!,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: isSelected
                                      ? RFColors.generalBg
                                      : RFColors.greyPrimary,
                                ),
                          ),
                          Text(
                            fridge.type!.getTitle(context),
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontStyle: FontStyle.italic,
                                      color: isSelected
                                          ? RFColors.generalBg
                                          : RFColors.greyPrimary,
                                    ),
                          ),
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
                        fridge.users!.length.toString(),
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
