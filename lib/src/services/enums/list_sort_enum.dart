import 'package:flutter/material.dart';

enum ListSort {
  az,
  za,
}

extension SortExt on ListSort {
  IconData getIcon() {
    switch (this) {
      case ListSort.az:
        return Icons.abc;
      case ListSort.za:
        return Icons.abc;
    }
  }

  bool isAscending() {
    return this == ListSort.za;
  }
}
