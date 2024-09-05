import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/services/enums/fridge_sort_enum.dart';

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
    on<_Sort>((event, emit) {
      List<Grocery> sortedGroceries = List.from(state.selectedGroceries);

      switch (event.sort) {
        case FridgeSort.az:
          sortedGroceries
              .sort((a, b) => (a.label ?? '').compareTo(b.label ?? ''));
          break;
        case FridgeSort.za:
          sortedGroceries
              .sort((a, b) => (b.label ?? '').compareTo(a.label ?? ''));
          break;
        case FridgeSort.expirationAsc:
          sortedGroceries.sort((a, b) => (a.expirationDate ?? DateTime.now())
              .compareTo(b.expirationDate ?? DateTime.now()));
          break;
        case FridgeSort.expirationDes:
          sortedGroceries.sort((a, b) => (b.expirationDate ?? DateTime.now())
              .compareTo(a.expirationDate ?? DateTime.now()));
          break;
      }

      emit(
        state.copyWith(
          selectedGroceries: sortedGroceries,
          selectedSort: event.sort,
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
    on<_EditGrocery>((event, emit) {
      final updatedGroceries = List<Grocery>.from(state.selectedGroceries);
      final index = updatedGroceries
          .indexWhere((g) => g.groceryId == event.grocery.groceryId);

      if (index != -1) {
        updatedGroceries[index] = event.grocery;
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            selectedGroceries: updatedGroceries,
          ),
        );
        add(AddToFridgeEvent.sort(state.selectedSort));
      } else {
        emit(state.copyWith(isError: true));
      }
    });
    on<_RemoveGrocery>((event, emit) {
      final updatedGroceries = List<Grocery>.from(state.selectedGroceries);
      final index = updatedGroceries
          .indexWhere((g) => g.groceryId == event.grocery.groceryId);

      if (index != -1) {
        updatedGroceries.removeAt(index);
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            selectedGroceries: updatedGroceries,
          ),
        );
      } else {
        emit(state.copyWith(isError: true));
      }
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
