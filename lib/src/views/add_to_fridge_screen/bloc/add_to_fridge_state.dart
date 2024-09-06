part of 'add_to_fridge_bloc.dart';

@freezed
class AddToFridgeState with _$AddToFridgeState {
  const factory AddToFridgeState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool isCompleted,
    @Default(false) bool noResults,
    Fridge? selectedFridge,
    @Default([]) List<Grocery> selectedGroceries,
    @Default([]) List<GroceryTemplate> searchedGroceries,
    @Default(FridgeSort.az) FridgeSort selectedSort,
  }) = _AddToFridgeState;
}
