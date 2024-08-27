part of 'remote_notifications_bloc.dart';

@freezed
class RemoteNotificationsState with _$RemoteNotificationsState {
  const factory RemoteNotificationsState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(NotificationPermissionStatus.denied)
    NotificationPermissionStatus permissionStatus,
  }) = _RemoteNotificationsState;
}

enum NotificationPermissionStatus {
  granted,
  denied,
}
