import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

enum ScreenState {
  home,
  fridges,
  discovery,
  lists,
  account,
}

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
    on<_Init>((event, emit) {
      emit(
        state.copyWith(
          screenState: ScreenState.home,
          isLoading: false,
          isError: false,
        ),
      );
    });

    on<_SetScreenState>((event, emit) {
      emit(
        state.copyWith(
          screenState: event.screenState,
          isLoading: false,
          isError: false,
        ),
      );
    });
  }
}
