part of 'add_to_list_bloc.dart';

@freezed
class AddToListEvent with _$AddToListEvent {
  const factory AddToListEvent.init(ShoppingList selectedList) = _Init;
  const factory AddToListEvent.changeList(ShoppingList selectedList) =
      _ChangeList;
  const factory AddToListEvent.addGrocery(Grocery grocery) = _AddGrocery;
  const factory AddToListEvent.editGrocery(Grocery grocery) = _EditGrocery;
  const factory AddToListEvent.removeGrocery(Grocery grocery) = _RemoveGrocery;
  const factory AddToListEvent.removeAllGroceries() = _RemoveAllGroceries;
  const factory AddToListEvent.sort(ListSort sort) = _Sort;
  const factory AddToListEvent.searchGrocery(
      BuildContext context, String input) = _SearchGrocery;
  const factory AddToListEvent.addToList(BuildContext context) = _AddToList;
}
