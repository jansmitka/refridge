part of 'snackbar_bloc.dart';

@freezed
class SnackbarState with _$SnackbarState {
  const factory SnackbarState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool showSnackbar,
    SnackbarType? snackbarType,
    String? title,
    String? body,
  }) = _SnackbarState;
}
