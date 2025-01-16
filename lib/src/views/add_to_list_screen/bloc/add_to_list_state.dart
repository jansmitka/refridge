part of 'add_to_list_bloc.dart';

@freezed
class AddToListState with _$AddToListState {
  const factory AddToListState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool isCompleted,
    @Default(false) bool noResults,
    ShoppingList? selectedList,
    @Default([]) List<Grocery> selectedGroceries,
    @Default([]) List<GroceryTemplate> searchedGroceries,
    @Default(ListSort.az) ListSort selectedSort,
  }) = _AddToListState;
}
