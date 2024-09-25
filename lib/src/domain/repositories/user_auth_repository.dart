import 'package:firebase_auth/firebase_auth.dart';
import 'package:refridge/src/domain/models/firebase_collections.dart';
import 'package:refridge/src/services/helpers/firebase_errors.dart';
import 'package:refridge/src/services/helpers/result.dart';
import 'package:refridge/src/settings/get_it_setup.dart';

class UserAuthRepository {
  final FirebaseAuth _firebaseAuth = getIt<FirebaseAuth>();

  Future<Result<UserCredential>> createUser(
      String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      String userId = userCredential.user!.uid;

      //create new fridge
      final fridgeRef = collectionRef.fridge.doc();
      await fridgeRef.set({
        FridgeField.id: fridgeRef.id,
        FridgeField.title: "Fridge",
        FridgeField.isDefault: true,
        FridgeField.type: 1,
        FridgeField.users: [userId],
      });
      //create new shopping list
      final listRef = collectionRef.shoppingList.doc();
      await listRef.set({
        SLField.id: listRef.id,
        SLField.title: "List",
        SLField.isDefault: true,
        SLField.users: [userId],
      });
      // create new user
      await documentRef.user(userId).set({
        UserField.email: email,
        UserField.userId: userId,
        UserField.fridges: [fridgeRef.id],
        UserField.shoppingLists: [listRef.id],
        UserField.selectedFridge: fridgeRef.id,
        UserField.selectedList: listRef.id,
      });

      return Result.success(userCredential);
    } on FirebaseAuthException catch (e) {
      final error = firebaseErrors.firstWhere((i) => i.codeId == e.code,
          orElse: () => firebaseErrors.last);
      return Result.error(error.desc);
    } catch (e) {
      return Result.error('unknown_error');
    }
  }

  Future<Result<UserCredential>> loginUser(
      String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return Result.success(userCredential);
    } on FirebaseAuthException catch (e) {
      final error = firebaseErrors.firstWhere((i) {
        return i.codeId == e.code;
      }, orElse: () => firebaseErrors.last);
      return Result.error(error.desc);
    } catch (e) {
      return Result.error('unknown_error');
    }
  }

  Future<Result<UserCredential>> loginViaGoogle() async {
    try {
      final googleProvider = GoogleAuthProvider();
      UserCredential userCredential =
          await _firebaseAuth.signInWithProvider(googleProvider);

      String userId = userCredential.user!.uid;
      final snapshot = await documentRef.user(userId).get();
      if (!snapshot.exists) {
        //create new fridge
        final fridgeRef = collectionRef.fridge.doc();
        await fridgeRef.set({
          FridgeField.id: fridgeRef.id,
          FridgeField.title: "Fridge",
          FridgeField.isDefault: true,
          FridgeField.type: 1,
          FridgeField.users: [userId],
        });
        //create new shopping list
        final listRef = collectionRef.shoppingList.doc();
        await listRef.set({
          SLField.id: listRef.id,
          SLField.title: "List",
          SLField.isDefault: true,
          SLField.users: [userId],
        });
        //create new user
        await documentRef.user(userId).set({
          UserField.email: userCredential.user!.email,
          UserField.userId: userId,
          UserField.fridges: [fridgeRef.id],
          UserField.shoppingLists: [listRef.id],
          UserField.selectedFridge: fridgeRef.id,
          UserField.selectedList: listRef.id,
        });
      }
      return Result.success(userCredential);
    } on FirebaseAuthException catch (e) {
      final error = firebaseErrors.firstWhere((i) {
        return i.codeId == e.code;
      }, orElse: () => firebaseErrors.last);
      return Result.error(error.desc);
    } catch (e) {
      return Result.error('unknown_error');
    }
  }

  Future<Result<void>> recoverPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(
        email: email,
      );

      return Result.success(null);
    } on FirebaseAuthException catch (e) {
      final error = firebaseErrors.firstWhere((i) {
        return i.codeId == e.code;
      }, orElse: () => firebaseErrors.last);
      return Result.error(error.desc);
    } catch (e) {
      return Result.error('unknown_error');
    }
  }
}
