import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';

class AmountIncreaseField extends StatelessWidget {
  final int amount;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  const AmountIncreaseField({
    super.key,
    required this.amount,
    required this.onIncrease,
    required this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: RFColors.greyPrimary,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          Center(
              child: Text(
            "$amount",
            style: Theme.of(context).textTheme.bodyLarge!,
          )),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: onIncrease,
              child: Container(
                width: 25,
                height: 40,
                decoration: const BoxDecoration(
                    color: RFColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(45),
                      bottomRight: Radius.circular(45),
                    )),
                child: const Icon(
                  Icons.add,
                  size: 15,
                  color: RFColors.generalBg,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: onDecrease,
              child: Container(
                width: 25,
                height: 40,
                decoration: const BoxDecoration(
                  color: RFColors.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    bottomLeft: Radius.circular(45),
                  ),
                ),
                child: const Icon(
                  Icons.remove,
                  size: 15,
                  color: RFColors.generalBg,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
