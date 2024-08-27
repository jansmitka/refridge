part of 'first_launch_bloc.dart';

@freezed
class FirstLaunchEvent with _$FirstLaunchEvent {
  const factory FirstLaunchEvent.isFirstLaunch() = _IsFirstLaunch;
  const factory FirstLaunchEvent.setFirstLaunch() = _SetFirstLaunch;
}
