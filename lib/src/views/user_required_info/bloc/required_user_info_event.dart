part of 'required_user_info_bloc.dart';

@freezed
class RequiredUserInfoEvent with _$RequiredUserInfoEvent {
  const factory RequiredUserInfoEvent.init(RFUser? user) = _Init;
  const factory RequiredUserInfoEvent.saveUserInfo(
    String firstname,
    String lastname,
  ) = _SaveUserInfo;
  const factory RequiredUserInfoEvent.saveUserProfileImg(XFile image) =
      _SaveUserProfileImg;
  const factory RequiredUserInfoEvent.updateUserProfileImg(String imageUrl) =
      _UpdateUserProfileImg;
}
