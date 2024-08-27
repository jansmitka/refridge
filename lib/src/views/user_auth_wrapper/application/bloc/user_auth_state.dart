part of 'user_auth_bloc.dart';

@freezed
class UserAuthState with _$UserAuthState {
  const factory UserAuthState.authenticated(User user) = _Authenticated;
  const factory UserAuthState.unauthenticated() = _Unauthenticated;
}
