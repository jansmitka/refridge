part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.init() = _Init;
  const factory AuthEvent.changeScreenState(
    AuthScreenType type,
  ) = _ChangeScreenState;
  const factory AuthEvent.signInUser(
    String email,
    String password,
  ) = _SignInUser;
  const factory AuthEvent.signUpUser(
    String email,
    String password,
  ) = _SignUpUser;
  const factory AuthEvent.signInViaGoogle() = _SignInViaGoogle;
  const factory AuthEvent.recoverPassword(String email) = _RecoverPassword;
  const factory AuthEvent.logoutUser() = _LogoutUser;
}
