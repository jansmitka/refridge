import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:refridge/src/services/helpers/result.dart';
import 'package:refridge/src/settings/get_it_setup.dart';

class FirebaseStorageRepository {
  final FirebaseStorage _storage = getIt<FirebaseStorage>();

  Future<Result<String>> uploadUserProfileImg(
      String userId, XFile image) async {
    String fileName = 'profilePictures/$userId.jpg';
    Reference ref = _storage.ref().child(fileName);
    UploadTask uploadTask = ref.putFile(File(image.path));
    try {
      final snapshot = await uploadTask.whenComplete(() {});
      final urlDownload = await snapshot.ref.getDownloadURL();

      return Result.success(urlDownload);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
