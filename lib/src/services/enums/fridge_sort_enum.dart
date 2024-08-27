import 'package:flutter/material.dart';

enum FridgeSort {
  az,
  za,
  amountAsc,
  amountDes,
  durabilityAsc,
  durabilityDes,
}

extension SortExt on FridgeSort {
  IconData getIcon() {
    switch (this) {
      case FridgeSort.az:
        return Icons.abc;
      case FridgeSort.za:
        return Icons.abc;
      case FridgeSort.amountAsc:
        return Icons.tag_outlined;
      case FridgeSort.amountDes:
        return Icons.tag_outlined;
      case FridgeSort.durabilityAsc:
        return Icons.access_time;
      case FridgeSort.durabilityDes:
        return Icons.access_time;
    }
  }
}
