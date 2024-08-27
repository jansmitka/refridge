import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'first_launch_event.dart';
part 'first_launch_state.dart';
part 'first_launch_bloc.freezed.dart';

class FirstLaunchBloc extends Bloc<FirstLaunchEvent, FirstLaunchState> {
  FirstLaunchBloc() : super(const FirstLaunchState()) {
    on<_IsFirstLaunch>((event, emit) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final bool firstLaunch = prefs.getBool('first_launch') ?? true;

      if (firstLaunch) {
        await prefs.setBool('first_launch', false);
        emit(
          state.copyWith(
            isFirstLaunch: true,
          ),
        );
      }
    });
    on<_SetFirstLaunch>((event, emit) async {
      emit(
        state.copyWith(
          isFirstLaunch: false,
        ),
      );
    });
  }
}
