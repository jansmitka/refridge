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
      width: 100,
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
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: onIncrease,
              child: Container(
                width: 25,
                height: 20,
                decoration: const BoxDecoration(
                    color: RFColors.primaryColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(45))),
                child: const Icon(
                  Icons.add,
                  size: 15,
                  color: RFColors.generalBg,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: onDecrease,
              child: Container(
                width: 25,
                height: 20,
                decoration: const BoxDecoration(
                    color: RFColors.secondaryColor,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(45))),
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
