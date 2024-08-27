import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/domain/models/fridge.dart';
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
  FridgeManagementBloc() : super(const FridgeManagementState()) {
    on<_Init>((event, emit) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: false,
          user: event.user,
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
      emit(
        state.copyWith(
          sortType: event.type,
        ),
      );
    });
  }
}
