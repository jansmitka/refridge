part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool missingUserInfo,
    RFUser? user,
  }) = _UserState;
}
