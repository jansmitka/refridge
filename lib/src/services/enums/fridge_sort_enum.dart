import 'package:flutter/material.dart';

enum FridgeSort {
  az,
  za,
  expirationDes,
  expirationAsc,
}

extension SortExt on FridgeSort {
  IconData getIcon() {
    switch (this) {
      case FridgeSort.az:
        return Icons.abc;
      case FridgeSort.za:
        return Icons.abc;
      case FridgeSort.expirationAsc:
        return Icons.access_time;
      case FridgeSort.expirationDes:
        return Icons.access_time;
    }
  }

  bool isAscending() {
    return this == FridgeSort.expirationAsc || this == FridgeSort.za;
  }
}
