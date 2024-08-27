part of 'snackbar_bloc.dart';

@freezed
class SnackbarEvent with _$SnackbarEvent {
  const factory SnackbarEvent.initial() = _Initial;
  const factory SnackbarEvent.showSnackBar(
      SnackbarType type, String title, String body) = _ShowSnackBar;
}
