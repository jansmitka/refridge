import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:refridge/src/settings/get_it_setup.dart';

final collectionRef = CollectionRef();
final documentRef = DocumentRef();

class Collection {
  Collection();

  static const String users = 'users';
  static const String notifications = 'notifications';
  static const String fridges = 'fridges';
  static const String shoppingLists = 'shoppingLists';
  static const String groceries = 'groceries';
}

class UserField {
  UserField();

  static const String userId = 'userId';
  static const String email = 'email';
  static const String authToken = 'authToken';
  static const String fcmToken = 'fcmToken';
  static const String firstname = 'firstname';
  static const String firstnameLowercase = 'firstnameLowercase';
  static const String lastname = 'lastname';
  static const String lastnameLowercase = 'lastnameLowercase';
  static const String name = 'name';
  static const String nameLowercase = 'nameLowercase';
  static const String profileImgURL = 'profileImgURL';
  static const String isCertified = 'isCertified';
  static const String fridges = 'fridges';
  static const String shoppingLists = 'shoppingLists';
  static const String selectedList = 'selectedList';
  static const String selectedFridge = 'selectedFridge';
}

class FridgeField {
  FridgeField();

  static const String id = 'id';
  static const String type = 'type';
  static const String title = 'title';
  static const String users = 'users';
  static const String isDefault = 'isDefault';
  static const String groceries = 'groceries';
}

class SLField {
  SLField();

  static const String id = 'id';
  static const String title = 'title';
  static const String users = 'users';
  static const String isDefault = 'isDefault';
  static const String groceries = 'groceries';
}

class GroceryField {
  GroceryField();

  static const String id = 'id';
  static const String groceryId = 'groceryId';
  static const String label = 'label';
  static const String amount = 'amount';
  static const String unit = 'unit';
  static const String defaultUnit = 'defaultUnit';
  static const String imagePath = 'imagePath';
  static const String type = 'type';
  static const String defaultType = 'defaultType';
  static const String expirationDate = 'expirationDate';
}

class NotificationField {
  NotificationField();

  static const String id = 'id';
  static const String targetsFcmTokens = 'targetsFcmTokens';
  static const String date = 'date';
  static const String isNew = 'isNew';
  static const String type = 'type';
  static const String title = 'title';
  static const String body = 'body';
  static const String deeplink = 'deeplink';
}

class CollectionRef {
  final FirebaseFirestore _firestore = getIt<FirebaseFirestore>();

  CollectionRef._privateConstructor();
  static final CollectionRef _instance = CollectionRef._privateConstructor();

  factory CollectionRef() {
    return _instance;
  }

  CollectionReference<Map<String, dynamic>> get user =>
      _firestore.collection(Collection.users);
  CollectionReference<Map<String, dynamic>> get fridge =>
      _firestore.collection(Collection.fridges);
  CollectionReference<Map<String, dynamic>> get shoppingList =>
      _firestore.collection(Collection.shoppingLists);
  CollectionReference<Map<String, dynamic>> fridgeGroceries(String fridgeId) =>
      _firestore
          .collection(Collection.fridges)
          .doc(fridgeId)
          .collection(Collection.groceries);
  CollectionReference<Map<String, dynamic>> listGroceries(String listId) =>
      _firestore
          .collection(Collection.shoppingLists)
          .doc(listId)
          .collection(Collection.groceries);
}

class DocumentRef {
  DocumentRef._privateConstructor();
  static final DocumentRef _instance = DocumentRef._privateConstructor();

  factory DocumentRef() {
    return _instance;
  }

  DocumentReference<Map<String, dynamic>> user(String userId) =>
      collectionRef.user.doc(userId);
  DocumentReference<Map<String, dynamic>> fridge(String fridgeId) =>
      collectionRef.fridge.doc(fridgeId);
  DocumentReference<Map<String, dynamic>> list(String listId) =>
      collectionRef.shoppingList.doc(listId);
}
