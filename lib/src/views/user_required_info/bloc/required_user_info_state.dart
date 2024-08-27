part of 'required_user_info_bloc.dart';

@freezed
class RequiredUserInfoState with _$RequiredUserInfoState {
  const factory RequiredUserInfoState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    RFUser? user,
    String? imageURL,
  }) = _RequiredUserInfoState;
}
