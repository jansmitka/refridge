import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:refridge/src/domain/models/firebase_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rf_user.freezed.dart';

@freezed
class RFUser with _$RFUser {
  const factory RFUser({
    required String? userId,
    required String? authToken,
    required String? fcmToken,
    required String? name,
    required String? firstname,
    required String? lastname,
    required String? email,
    required bool? isCertified,
    required String? profileImgURL,
    required List<String>? fridges,
    required List<String>? shoppingLists,
  }) = _RFUser;

  factory RFUser.fromDocument(
    DocumentSnapshot docUser,
  ) {
    Map<String, dynamic>? data = docUser.data() as Map<String, dynamic>?;
    return RFUser(
      userId: docUser.id,
      email: data?[UserField.email],
      authToken: data?[UserField.authToken],
      fcmToken: data?[UserField.fcmToken],
      name: '',
      // name: data?[UserField.firstname] + ' ' + data?[UserField.lastname],
      firstname: data?[UserField.firstname],
      lastname: data?[UserField.lastname],
      isCertified: data?[UserField.isCertified],
      profileImgURL: data?[UserField.profileImgURL],
      fridges: data?[UserField.fridges] != null
          ? List<String>.from(data![UserField.fridges])
          : [],
      shoppingLists: data?[UserField.shoppingLists] != null
          ? List<String>.from(data![UserField.shoppingLists])
          : [],
    );
  }
}

extension AhoyUserExtension on RFUser {
  bool missingRequiredInfo() {
    return firstname == null ||
        firstname == '' ||
        lastname == null ||
        lastname == '';
  }
}
