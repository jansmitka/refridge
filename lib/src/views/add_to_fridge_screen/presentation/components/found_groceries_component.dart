import 'package:flutter/material.dart';
import 'package:refridge/src/domain/extensions/groceries_extension.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class FoundGroceriesComponent extends StatelessWidget {
  final List<GroceryTemplate> groceries;
  final Function(GroceryTemplate) onTap;
  const FoundGroceriesComponent({
    super.key,
    required this.groceries,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: groceries.length,
        itemBuilder: (context, index) {
          return RFPadding.xSmallVertical(
            child: GestureDetector(
              onTap: () => onTap(groceries[index]),
              child: Container(
                decoration: BoxDecoration(
                  color: RFColors.greySecondary,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: RFPadding.xSmall(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            groceries[index].imgPath,
                            width: 35,
                            height: 35,
                          ),
                          Text(groceries[index].getLabel(context))
                        ],
                      ),
                      const SizedBox(
                        width: 35,
                        height: 35,
                        child: Icon(
                          Icons.add,
                          color: RFColors.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
