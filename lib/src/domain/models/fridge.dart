import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:refridge/src/domain/extensions/int_extension.dart';
import 'package:refridge/src/domain/models/firebase_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/services/enums/fridge_type_enum.dart';

part 'fridge.freezed.dart';

@freezed
class Fridge with _$Fridge {
  const factory Fridge({
    required String? fridgeId,
    required String? title,
    required bool? isDefault,
    required FridgeType? type,
    required List<String>? users,
  }) = _Fridge;

  factory Fridge.fromDocument(
    DocumentSnapshot docUser,
  ) {
    Map<String, dynamic>? data = docUser.data() as Map<String, dynamic>?;
    return Fridge(
      fridgeId: docUser.id,
      title: data?[FridgeField.title],
      isDefault: data?[FridgeField.isDefault],
      type: (data?[FridgeField.type] as int).getFridgeType(),
      users: data?[FridgeField.users] != null
          ? List<String>.from(data![FridgeField.users])
          : [],
    );
  }
}
