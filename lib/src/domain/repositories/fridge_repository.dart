import 'package:refridge/src/domain/models/firebase_collections.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/services/helpers/result.dart';

class FridgeRepository {
  Future<Result<Fridge>> getFridgeData(String fridgeId) async {
    try {
      final result = await documentRef.fridge(fridgeId).get();
      return Result.success(Fridge.fromDocument(result));
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Future<Result<List<Fridge>>> getFridgesData(List<String> ids) async {
    try {
      List<Fridge> fridges = [];
      for (var id in ids) {
        final result = await documentRef.fridge(id).get();
        fridges.add(Fridge.fromDocument(result));
      }
      return Result.success(fridges);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
