part of 'add_to_fridge_bloc.dart';

@freezed
class AddToFridgeEvent with _$AddToFridgeEvent {
  const factory AddToFridgeEvent.init(Fridge selectedFridge) = _Init;
  const factory AddToFridgeEvent.changeFridge(Fridge selectedFridge) =
      _ChangeFridge;
}
