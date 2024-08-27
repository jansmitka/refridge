part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.init(RFUser? user) = _Init;
  const factory AccountEvent.saveUserProfileImg(XFile image) =
      _SaveUserProfileImg;
  const factory AccountEvent.updateUserProfileImg(String imageUrl) =
      _UpdateUserProfileImg;
}
