import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/domain/models/grocery.dart';
import 'package:refridge/src/domain/models/rf_user.dart';
import 'package:refridge/src/domain/repositories/fridge_repository.dart';
import 'package:refridge/src/services/enums/fridge_sort_enum.dart';
import 'package:refridge/src/services/enums/section_display_enum.dart';
import 'package:refridge/src/settings/get_it_setup.dart';

part 'fridge_management_event.dart';
part 'fridge_management_state.dart';
part 'fridge_management_bloc.freezed.dart';

class FridgeManagementBloc
    extends Bloc<FridgeManagementEvent, FridgeManagementState> {
  final _fridgeRepository = getIt<FridgeRepository>();
  // StreamSubscription<List<Grocery>>? _grocerySubscription;
  FridgeManagementBloc() : super(const FridgeManagementState()) {
    on<_Init>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
          groceries: [],
          user: event.user,
        ),
      );
      add(const FridgeManagementEvent.fetchFridgeData());
    });
    on<_Reload>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
          groceries: [],
        ),
      );
      add(const FridgeManagementEvent.fetchFridgeData());
    });
    on<_FetchFridgeData>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );
      final result =
          await _fridgeRepository.getFridgesData(state.user!.fridges ?? []);

      if (result.isSuccess) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            fridges: result.value,
            selectedFridge: result.value!.first,
          ),
        );
        add(const FridgeManagementEvent.fetchGroceries());
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isError: true,
          ),
        );
      }
    });
    on<_FetchGroceries>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );
      // await _grocerySubscription?.cancel();
      final selectedFridge = state.selectedFridge;
      if (selectedFridge != null) {
        Stream<List<Grocery>> groceriesStrem =
            _fridgeRepository.streamGroceries(selectedFridge.fridgeId!);

        await for (final groceries in groceriesStrem) {
          emit(
            state.copyWith(
              isLoading: false,
              isError: false,
              groceries: groceries,
            ),
          );
          add(FridgeManagementEvent.changeSortType(state.sortType));
        }
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isError: true,
          ),
        );
      }
    });
    on<_EditGrocery>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          isError: false,
        ),
      );
      final result = await _fridgeRepository.editGrocery(
          state.selectedFridge!.fridgeId!, event.grocery);

      if (result.isSuccess) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
          ),
        );
        add(FridgeManagementEvent.changeSortType(state.sortType));
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isError: true,
          ),
        );
      }
    });
    on<_DeleteGrocery>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
        ),
      );
      final result = await _fridgeRepository.deleteGrocery(
          state.selectedFridge!.fridgeId!, event.grocery);

      if (result.isSuccess) {
        emit(
          state.copyWith(
            isLoading: false,
            isError: false,
          ),
        );
        add(FridgeManagementEvent.changeSortType(state.sortType));
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            isError: true,
          ),
        );
      }
    });
    on<_ChangeDisplayType>((event, emit) {
      emit(
        state.copyWith(
          displayType: event.type,
        ),
      );
    });
    on<_ChangeSortType>((event, emit) {
      List<Grocery> sortedGroceries = List.from(state.groceries);

      switch (event.type) {
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
          groceries: sortedGroceries,
          sortType: event.type,
        ),
      );
    });
  }
}
