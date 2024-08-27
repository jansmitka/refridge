import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum FridgeType {
  personal,
  family,
  work,
}

extension FridgeExt on FridgeType {
  int toInt() {
    switch (this) {
      case FridgeType.personal:
        return 1;
      case FridgeType.family:
        return 2;
      case FridgeType.work:
        return 3;
    }
  }

  String getTitle(BuildContext context) {
    switch (this) {
      case FridgeType.personal:
        return AppLocalizations.of(context)!.fridge_type_personal;
      case FridgeType.family:
        return AppLocalizations.of(context)!.fridge_type_family;
      case FridgeType.work:
        return AppLocalizations.of(context)!.fridge_type_work;
    }
  }
}
