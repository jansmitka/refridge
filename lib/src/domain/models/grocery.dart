import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:refridge/src/domain/extensions/int_extension.dart';
import 'package:refridge/src/domain/models/firebase_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';

part 'grocery.freezed.dart';

@freezed
class Grocery with _$Grocery {
  const factory Grocery({
    required String? id,
    required String? groceryId,
    required String? label,
    required String? imagePath,
    required GroceryType? defaultType,
    required GroceryType? type,
    required double? amount,
    required DateTime? expirationDate,
    required GroceryUnits? defaultUnit,
    required GroceryUnits? unit,
  }) = _Grocery;

  factory Grocery.fromDocument(
    DocumentSnapshot docUser,
  ) {
    Map<String, dynamic>? data = docUser.data() as Map<String, dynamic>?;
    return Grocery(
      id: docUser.id,
      groceryId: data?[GroceryField.groceryId],
      label: data?[GroceryField.label],
      imagePath: data?[GroceryField.imagePath],
      type: (data?[GroceryField.type] as int).getGroceryType(),
      defaultType: (data?[GroceryField.defaultType] as int).getGroceryType(),
      amount: data?[GroceryField.amount],
      expirationDate:
          (data?[GroceryField.expirationDate] as Timestamp?)?.toDate(),
      defaultUnit: (data?[GroceryField.defaultUnit] as int).getGroceryUnit(),
      unit: (data?[GroceryField.unit] as int).getGroceryUnit(),
    );
  }

  factory Grocery.fromTemplate(
    GroceryTemplate template, {
    bool useNull = true,
  }) {
    return Grocery(
      id: null,
      groceryId: template.id,
      label: template.label,
      imagePath: template.imgPath,
      type: template.defaultType,
      defaultType: template.defaultType,
      amount: useNull ? null : 1,
      expirationDate: useNull ? null : DateTime.now(),
      defaultUnit: template.defaultUnit,
      unit: template.defaultUnit,
    );
  }
}
