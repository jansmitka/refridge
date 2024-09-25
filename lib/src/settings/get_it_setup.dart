import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:refridge/src/domain/repositories/fridge_repository.dart';
import 'package:refridge/src/domain/repositories/storage_repository.dart';
import 'package:refridge/src/domain/repositories/user_auth_repository.dart';
import 'package:refridge/src/domain/repositories/user_reporitory.dart';
import 'package:refridge/src/services/deeplinks/deeplink_resolver_service.dart';
import 'package:refridge/src/services/first_launch/bloc/first_launch_bloc.dart';
import 'package:refridge/src/services/notifications/bloc/remote_notifications_bloc.dart';
import 'package:refridge/src/services/snackbar/blocs/snackbar_bloc.dart';
import 'package:refridge/src/settings/navigation_service.dart';
import 'package:refridge/src/views/account_screen/bloc/account_bloc.dart';
import 'package:refridge/src/views/add_to_fridge_screen/bloc/add_to_fridge_bloc.dart';
import 'package:refridge/src/views/auth_screens/blocs/auth_bloc.dart';
import 'package:refridge/src/views/fridge_screen/bloc/fridge_management_bloc.dart';
import 'package:refridge/src/views/main_screen/blocs/main_bloc.dart';
import 'package:refridge/src/views/main_screen/blocs/user_bloc.dart';
import 'package:refridge/src/views/user_auth_wrapper/application/bloc/user_auth_bloc.dart';
import 'package:refridge/src/views/user_required_info/bloc/required_user_info_bloc.dart';

final getIt = GetIt.instance;

Future configureGetIt() async {
  getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  getIt.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
  getIt.registerSingleton<FirebaseMessaging>(FirebaseMessaging.instance);
  getIt.registerSingleton<FirebaseStorage>(FirebaseStorage.instance);

  getIt
      .registerFactory<UserAuthBloc>(() => UserAuthBloc(getIt<FirebaseAuth>()));

  getIt.registerFactory<AuthBloc>(() => AuthBloc());
  getIt.registerLazySingleton<RemoteNotificationsBloc>(
      () => RemoteNotificationsBloc());
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
  getIt.registerLazySingleton<DeeplinkResolver>(() => DeeplinkResolver());
  getIt.registerLazySingleton<SnackbarBloc>(() => SnackbarBloc());
  getIt.registerLazySingleton<FirstLaunchBloc>(() => FirstLaunchBloc());
  getIt.registerLazySingleton<MainBloc>(() => MainBloc());
  getIt.registerLazySingleton<UserBloc>(() => UserBloc());
  getIt.registerLazySingleton<AccountBloc>(() => AccountBloc());
  getIt.registerLazySingleton<AddToFridgeBloc>(() => AddToFridgeBloc());
  getIt.registerLazySingleton<FridgeManagementBloc>(
      () => FridgeManagementBloc());
  getIt.registerLazySingleton<RequiredUserInfoBloc>(
      () => RequiredUserInfoBloc());

  getIt.registerLazySingleton<UserAuthRepository>(() => UserAuthRepository());
  getIt.registerLazySingleton<UserRepository>(() => UserRepository());
  getIt.registerLazySingleton<FridgeRepository>(() => FridgeRepository());
  getIt.registerLazySingleton<FirebaseStorageRepository>(
      () => FirebaseStorageRepository());
}
