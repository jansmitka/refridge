part of 'fridge_management_bloc.dart';

@freezed
class FridgeManagementState with _$FridgeManagementState {
  const factory FridgeManagementState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(SectionDisplayType.grid) SectionDisplayType displayType,
    @Default(FridgeSort.az) FridgeSort sortType,
    RFUser? user,
    List<Fridge>? fridges,
    Fridge? selectedFridge,
  }) = _FridgeManagementState;
}
