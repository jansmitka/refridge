import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';

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
          searchedGroceries: [],
          selectedGroceries: [],
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
    on<_AddGrocery>((event, emit) {
      final updatedGroceries = List<Grocery>.from(state.selectedGroceries)
        ..add(event.grocery);
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
          selectedGroceries: updatedGroceries,
        ),
      );
    });
    on<_SearchGrocery>((event, emit) {
      if (event.input.isNotEmpty) {
        emit(
          state.copyWith(
            isLoading: true,
            isError: false,
          ),
        );
        final result =
            GroceryTemplate.searchGroceries(event.context, event.input);
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            searchedGroceries: result,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            searchedGroceries: [],
          ),
        );
      }
    });
  }
}
