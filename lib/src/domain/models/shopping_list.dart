import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:refridge/src/domain/models/firebase_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_list.freezed.dart';

@freezed
class ShoppingList with _$ShoppingList {
  const factory ShoppingList({
    required String? listId,
    required String? title,
    required bool? isDefault,
    required List<String>? users,
  }) = _ShoppingList;

  factory ShoppingList.fromDocument(
    DocumentSnapshot docUser,
  ) {
    Map<String, dynamic>? data = docUser.data() as Map<String, dynamic>?;
    return ShoppingList(
      listId: docUser.id,
      title: data?[SLField.title],
      isDefault: data?[SLField.isDefault],
      users: data?[SLField.users] != null
          ? List<String>.from(data![SLField.users])
          : [],
    );
  }
}
