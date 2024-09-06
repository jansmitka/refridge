part of 'add_to_fridge_bloc.dart';

@freezed
class AddToFridgeEvent with _$AddToFridgeEvent {
  const factory AddToFridgeEvent.init(Fridge selectedFridge) = _Init;
  const factory AddToFridgeEvent.changeFridge(Fridge selectedFridge) =
      _ChangeFridge;
  const factory AddToFridgeEvent.addGrocery(Grocery grocery) = _AddGrocery;
  const factory AddToFridgeEvent.editGrocery(Grocery grocery) = _EditGrocery;
  const factory AddToFridgeEvent.removeGrocery(Grocery grocery) =
      _RemoveGrocery;
  const factory AddToFridgeEvent.removeAllGroceries() = _RemoveAllGroceries;
  const factory AddToFridgeEvent.sort(FridgeSort sort) = _Sort;
  const factory AddToFridgeEvent.searchGrocery(
      BuildContext context, String input) = _SearchGrocery;
  const factory AddToFridgeEvent.addToFridge(BuildContext context) =
      _AddToFridge;
}
