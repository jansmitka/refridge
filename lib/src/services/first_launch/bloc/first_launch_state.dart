part of 'first_launch_bloc.dart';

@freezed
class FirstLaunchState with _$FirstLaunchState {
  const factory FirstLaunchState({
    @Default(false) bool isFirstLaunch,
  }) = _FirstLaunchState;
}
