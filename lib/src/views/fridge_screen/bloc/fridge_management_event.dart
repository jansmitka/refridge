part of 'fridge_management_bloc.dart';

@freezed
class FridgeManagementEvent with _$FridgeManagementEvent {
  const factory FridgeManagementEvent.init(
    RFUser user,
  ) = _Init;
  const factory FridgeManagementEvent.reload() = _Reload;
  const factory FridgeManagementEvent.fetchFridgeData() = _FetchFridgeData;
  const factory FridgeManagementEvent.fetchGroceries() = _FetchGroceries;
  const factory FridgeManagementEvent.changeFridge(Fridge selectedFridge) =
      _ChangeFridge;
  const factory FridgeManagementEvent.editGrocery(Grocery grocery) =
      _EditGrocery;
  const factory FridgeManagementEvent.deleteGrocery(Grocery grocery) =
      _DeleteGrocery;
  const factory FridgeManagementEvent.changeDisplayType(
      SectionDisplayType type) = _ChangeDisplayType;
  const factory FridgeManagementEvent.changeSortType(FridgeSort type) =
      _ChangeSortType;
}
