part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    RFUser? user,
    String? imageURL,
  }) = _AccountState;
}
