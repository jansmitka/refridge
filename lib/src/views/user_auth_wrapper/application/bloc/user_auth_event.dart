part of 'user_auth_bloc.dart';

@freezed
class UserAuthEvent with _$UserAuthEvent {
  const factory UserAuthEvent.authStateChanged(User? user) = _AuthStateChanged;
}
