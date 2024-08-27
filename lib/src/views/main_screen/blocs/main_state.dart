part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool missingUserInfo,
    @Default(ScreenState.home) ScreenState screenState,
    RFUser? user,
  }) = _MainState;
}
