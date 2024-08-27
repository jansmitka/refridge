import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/services/enums/fridge_type_enum.dart';

extension IntExt on int {
  FridgeType getFridgeType() {
    switch (this) {
      case 1:
        return FridgeType.personal;
      case 2:
        return FridgeType.family;
      case 3:
        return FridgeType.work;
      default:
        return FridgeType.personal;
    }
  }

  GroceryType getGroceryType() {
    switch (this) {
      case 1:
        return GroceryType.liquid;
      case 2:
        return GroceryType.solid;
      default:
        return GroceryType.liquid;
    }
  }

  GroceryUnits getGroceryUnit() {
    switch (this) {
      case 1:
        return GroceryUnits.ml;
      case 2:
        return GroceryUnits.l;
      case 3:
        return GroceryUnits.g;
      case 4:
        return GroceryUnits.kg;
      case 5:
        return GroceryUnits.pcs;
      default:
        return GroceryUnits.ml;
    }
  }
}
