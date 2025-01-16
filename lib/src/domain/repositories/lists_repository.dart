import 'package:refridge/src/domain/models/firebase_collections.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/domain/models/shopping_list.dart';
import 'package:refridge/src/services/helpers/result.dart';

class ListsRepository {
  Future<Result<ShoppingList>> getListData(String listId) async {
    try {
      final result = await documentRef.list(listId).get();
      return Result.success(ShoppingList.fromDocument(result));
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Future<Result<List<ShoppingList>>> getListsData(List<String> ids) async {
    try {
      List<ShoppingList> lists = [];
      for (var id in ids) {
        final result = await documentRef.list(id).get();
        lists.add(ShoppingList.fromDocument(result));
      }
      return Result.success(lists);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Stream<List<Grocery>> streamGroceries(String fridgeId) {
    return collectionRef.listGroceries(fridgeId).snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Grocery.fromDocument(doc)).toList();
    });
  }

  Future<Result<bool>> editGrocery(String listId, Grocery grocery) async {
    try {
      final docRef = collectionRef.listGroceries(listId).doc(grocery.id);
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

  Future<Result<bool>> changeList(String listId, String userId) async {
    try {
      final docRef = documentRef.user(userId);
      await docRef.update({
        UserField.selectedList: listId,
      });
      return Result.success(true);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Future<Result<bool>> deleteGrocery(String listId, Grocery grocery) async {
    try {
      final docRef = collectionRef.listGroceries(listId).doc(grocery.id);
      await docRef.delete();
      return Result.success(true);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Future<Result<bool>> postGroceriesToList(
      String listId, List<Grocery> groceries) async {
    try {
      final groceryRef = collectionRef.listGroceries(listId);

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
