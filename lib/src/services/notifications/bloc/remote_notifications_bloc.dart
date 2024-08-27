import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:refridge/src/domain/repositories/user_reporitory.dart';
import 'package:refridge/src/services/deeplinks/deeplink_resolver_service.dart';
import 'package:refridge/src/services/snackbar/blocs/snackbar_bloc.dart';
import 'package:refridge/src/settings/get_it_setup.dart';

part 'remote_notifications_event.dart';
part 'remote_notifications_state.dart';
part 'remote_notifications_bloc.freezed.dart';

class RemoteNotificationsBloc
    extends Bloc<RemoteNotificationsEvent, RemoteNotificationsState> {
  final _userRepository = getIt<UserRepository>();
  final _firebaseMessaging = getIt<FirebaseMessaging>();
  final _firebaseAuth = getIt<FirebaseAuth>();

  RemoteNotificationsBloc() : super(const RemoteNotificationsState()) {
    on<_RequestNotificationPermission>(
      (event, emit) async {
        NotificationSettings settings =
            await _firebaseMessaging.requestPermission(
          alert: true,
          badge: true,
          sound: true,
          provisional: false,
        );

        if (settings.authorizationStatus == AuthorizationStatus.authorized) {
          emit(
            state.copyWith(
              isLoading: true,
              isError: false,
              permissionStatus: NotificationPermissionStatus.granted,
            ),
          );
        } else {
          emit(
            state.copyWith(
              isLoading: true,
              isError: false,
              permissionStatus: NotificationPermissionStatus.denied,
            ),
          );
        }
        String? token = await _firebaseMessaging.getToken();
        if (token != null) {
          add(RemoteNotificationsEvent.onTokenRefresh(token));
        }
      },
    );
    on<_OnTokenRefresh>(
      (event, emit) async {
        final User? user = _firebaseAuth.currentUser;
        if (user != null) {
          await _userRepository.updateUserFcmToken(user.uid, event.token);
        }
      },
    );

    _firebaseMessaging.onTokenRefresh.listen((token) {
      add(RemoteNotificationsEvent.onTokenRefresh(token));
    });

    FirebaseMessaging.onMessageOpenedApp.listen(
      (RemoteMessage message) {
        if (message.data.containsKey('deeplink')) {
          String? deepLink = message.data['deeplink'];
          if (deepLink != null) {
            getIt<DeeplinkResolver>().resolveDeeplink(deepLink);
          }
        }
      },
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      getIt<SnackbarBloc>().add(
        SnackbarEvent.showSnackBar(
          SnackbarType.info,
          message.data['title'],
          message.data['body'],
        ),
      );
    });
  }
}
