part of 'shopping_list_management_bloc.dart';

@freezed
class ShoppingListManagementEvent with _$ShoppingListManagementEvent {
  const factory ShoppingListManagementEvent.init(
    RFUser user,
  ) = _Init;
  const factory ShoppingListManagementEvent.reload() = _Reload;
  const factory ShoppingListManagementEvent.fetchListData() = _FetchListData;
  const factory ShoppingListManagementEvent.fetchGroceries() = _FetchGroceries;
  const factory ShoppingListManagementEvent.changeList(
      ShoppingList selectedList) = _ChangeList;
  const factory ShoppingListManagementEvent.editGrocery(Grocery grocery) =
      _EditGrocery;
  const factory ShoppingListManagementEvent.deleteGrocery(Grocery grocery) =
      _DeleteGrocery;
  const factory ShoppingListManagementEvent.changeDisplayType(
      SectionDisplayType type) = _ChangeDisplayType;
  const factory ShoppingListManagementEvent.changeSortType(ListSort type) =
      _ChangeSortType;
}
