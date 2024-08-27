part of 'remote_notifications_bloc.dart';

@freezed
class RemoteNotificationsEvent with _$RemoteNotificationsEvent {
  const factory RemoteNotificationsEvent.requestNotificationPermission() =
      _RequestNotificationPermission;
  const factory RemoteNotificationsEvent.onTokenRefresh(String token) =
      _OnTokenRefresh;
}
