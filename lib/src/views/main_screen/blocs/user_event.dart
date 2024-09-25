part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.init() = _Init;
  const factory UserEvent.getUserData(User user) = _GetUserData;
}
