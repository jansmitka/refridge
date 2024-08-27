import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/domain/models/fridge.dart';

part 'add_to_fridge_event.dart';
part 'add_to_fridge_state.dart';
part 'add_to_fridge_bloc.freezed.dart';

class AddToFridgeBloc extends Bloc<AddToFridgeEvent, AddToFridgeState> {
  AddToFridgeBloc() : super(const AddToFridgeState()) {
    on<_Init>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
          selectedFridge: event.selectedFridge,
        ),
      );
    });
    on<_ChangeFridge>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
          selectedFridge: event.selectedFridge,
        ),
      );
    });
  }
}
