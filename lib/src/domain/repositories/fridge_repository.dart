import 'package:refridge/src/domain/models/firebase_collections.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
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

  Stream<List<Grocery>> streamGroceries(String fridgeId) {
    return collectionRef.groceries(fridgeId).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Grocery.fromDocument(doc)).toList();
    });
  }

  Future<Result<bool>> editGrocery(String fridgeId, Grocery grocery) async {
    try {
      final docRef = collectionRef.groceries(fridgeId).doc(grocery.id);
      await docRef.update({
        GroceryField.amount: grocery.amount,
        GroceryField.expirationDate: grocery.expirationDate,
        GroceryField.defaultType: grocery.defaultType!.toDatabase(),
        GroceryField.defaultUnit: grocery.defaultUnit!.toDatabase(),
        GroceryField.type: grocery.type!.toDatabase(),
        GroceryField.unit: grocery.unit!.toDatabase(),
        GroceryField.imagePath: grocery.imagePath,
        GroceryField.label: grocery.label,
      });
      return Result.success(true);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Future<Result<bool>> deleteGrocery(String fridgeId, Grocery grocery) async {
    try {
      final docRef = collectionRef.groceries(fridgeId).doc(grocery.id);
      await docRef.delete();
      return Result.success(true);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Future<Result<bool>> postGroceriesToFridge(
      String fridgeId, List<Grocery> groceries) async {
    try {
      final groceryRef = collectionRef.groceries(fridgeId);

      for (Grocery grocery in groceries) {
        final ref = groceryRef.doc();
        await ref.set({
          GroceryField.id: ref.id,
          GroceryField.groceryId: grocery.groceryId,
          GroceryField.amount: grocery.amount,
          GroceryField.expirationDate: grocery.expirationDate,
          GroceryField.defaultType: grocery.defaultType!.toDatabase(),
          GroceryField.defaultUnit: grocery.defaultUnit!.toDatabase(),
          GroceryField.type: grocery.type!.toDatabase(),
          GroceryField.unit: grocery.unit!.toDatabase(),
          GroceryField.imagePath: grocery.imagePath,
          GroceryField.label: grocery.label,
        });
      }

      return Result.success(true);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
