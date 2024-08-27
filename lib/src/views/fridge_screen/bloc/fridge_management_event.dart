part of 'fridge_management_bloc.dart';

@freezed
class FridgeManagementEvent with _$FridgeManagementEvent {
  const factory FridgeManagementEvent.init(
    RFUser user,
  ) = _Init;
  const factory FridgeManagementEvent.fetchFridgeData() = _FetchFridgeData;
  const factory FridgeManagementEvent.changeDisplayType(
      SectionDisplayType type) = _ChangeDisplayType;
  const factory FridgeManagementEvent.changeSortType(FridgeSort type) =
      _ChangeSortType;
}
