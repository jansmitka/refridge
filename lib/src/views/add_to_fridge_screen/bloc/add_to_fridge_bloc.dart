// ignore_for_file: use_build_context_synchronously

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/grocery_template.dart';
import 'package:refridge/src/domain/repositories/fridge_repository.dart';
import 'package:refridge/src/services/enums/fridge_sort_enum.dart';
import 'package:refridge/src/services/snackbar/blocs/snackbar_bloc.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'add_to_fridge_event.dart';
part 'add_to_fridge_state.dart';
part 'add_to_fridge_bloc.freezed.dart';

class AddToFridgeBloc extends Bloc<AddToFridgeEvent, AddToFridgeState> {
  final _snackbarBloc = getIt<SnackbarBloc>();
  final _fridgeRepository = getIt<FridgeRepository>();
  AddToFridgeBloc() : super(const AddToFridgeState()) {
    on<_Init>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
          selectedFridge: event.selectedFridge,
          searchedGroceries: [],
          selectedGroceries: [],
          isCompleted: false,
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
    on<_RemoveAllGroceries>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
          selectedGroceries: [],
        ),
      );
    });
    on<_SearchGrocery>((event, emit) {
      if (event.input.isNotEmpty) {
        emit(
          state.copyWith(
            isLoading: true,
            isError: false,
            noResults: false,
          ),
        );
        final result =
            GroceryTemplate.searchGroceries(event.context, event.input);
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            searchedGroceries: result,
            noResults: result.isEmpty,
          ),
        );
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            searchedGroceries: [],
            noResults: false,
          ),
        );
      }
    });
    on<_AddToFridge>((event, emit) async {
      if (state.selectedGroceries.isEmpty) {
        _snackbarBloc.add(SnackbarEvent.showSnackBar(
          SnackbarType.info,
          AppLocalizations.of(event.context)!
              .add_to_fridge_screen_no_items_title,
          AppLocalizations.of(event.context)!
              .add_to_fridge_screen_no_items_desc,
        ));
      } else {
        emit(
          state.copyWith(
            isLoading: true,
            isError: false,
          ),
        );

        final result = await _fridgeRepository.postGroceriesToFridge(
          state.selectedFridge!.fridgeId!,
          state.selectedGroceries,
        );

        if (result.isSuccess) {
          emit(
            state.copyWith(
              isLoading: false,
              isError: false,
              isCompleted: true,
            ),
          );
        } else {
          _snackbarBloc.add(SnackbarEvent.showSnackBar(
            SnackbarType.error,
            AppLocalizations.of(event.context)!.error_title,
            AppLocalizations.of(event.context)!.error_desc,
          ));
          emit(
            state.copyWith(
              isLoading: false,
              isError: true,
            ),
          );
        }
      }
    });
  }
}
