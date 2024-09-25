import 'package:refridge/src/domain/extensions/string_extension.dart';
import 'package:refridge/src/domain/models/firebase_collections.dart';
import 'package:refridge/src/domain/models/rf_user.dart';
import 'package:refridge/src/services/helpers/result.dart';

class UserRepository {
  Stream<RFUser> getUserStream(String userId) {
    return documentRef.user(userId).snapshots().map((snapshot) {
      return RFUser.fromDocument(snapshot);
    });
  }

  Future<Result<bool>> updateRequiredUserInfo(
    String userId,
    String fridgeId,
    String listId,
    String firstname,
    String lastname,
  ) async {
    try {
      await documentRef.user(userId).update({
        UserField.firstname: firstname,
        UserField.firstnameLowercase:
            firstname.replaceCzechCharacters().toLowerCase(),
        UserField.lastname: lastname,
        UserField.lastnameLowercase:
            lastname.replaceCzechCharacters().toLowerCase(),
      });
      await documentRef.fridge(fridgeId).update({
        FridgeField.title: "$firstname's Fridge",
      });
      await documentRef.list(listId).update({
        SLField.title: "$firstname's List",
      });

      return Result.success(true);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Future<Result<bool>> updateUserFcmToken(
    String userId,
    String fcmToken,
  ) async {
    try {
      await documentRef.user(userId).update({
        UserField.fcmToken: fcmToken,
      });

      return Result.success(true);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Future<Result<bool>> updateUserProfileImage(
    String userId,
    String imageUrl,
  ) async {
    try {
      await documentRef.user(userId).update({
        UserField.profileImgURL: imageUrl,
      });

      return Result.success(true);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
