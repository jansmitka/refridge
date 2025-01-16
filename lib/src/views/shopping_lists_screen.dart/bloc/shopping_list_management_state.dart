part of 'shopping_list_management_bloc.dart';

@freezed
class ShoppingListManagementState with _$ShoppingListManagementState {
  const factory ShoppingListManagementState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(SectionDisplayType.grid) SectionDisplayType displayType,
    @Default(ListSort.az) ListSort sortType,
    RFUser? user,
    List<ShoppingList>? lists,
    ShoppingList? selectedList,
    @Default([]) List<Grocery> groceries,
  }) = _ShoppingListManagementState;
}
