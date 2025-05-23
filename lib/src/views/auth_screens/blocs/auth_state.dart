part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(AuthScreenType.signIn) AuthScreenType screenState,
    @Default(AuthScreenType.signIn) AuthScreenType prevScreenState,
  }) = _AuthState;
}
