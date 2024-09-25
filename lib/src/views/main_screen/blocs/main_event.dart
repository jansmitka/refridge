part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.init() = _Init;
  const factory MainEvent.setScreenState(ScreenState screenState) =
      _SetScreenState;
}
