import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'snackbar_event.dart';
part 'snackbar_state.dart';
part 'snackbar_bloc.freezed.dart';

class SnackbarBloc extends Bloc<SnackbarEvent, SnackbarState> {
  SnackbarBloc() : super(const SnackbarState()) {
    on<_Initial>((event, emit) async {
      emit(
        state.copyWith(
          showSnackbar: false,
          snackbarType: null,
          title: null,
          body: null,
        ),
      );
    });
    on<_ShowSnackBar>((event, emit) async {
      emit(
        state.copyWith(
          showSnackbar: true,
          snackbarType: event.type,
          title: event.title,
          body: event.body,
        ),
      );
    });
  }
}

enum SnackbarType {
  info,
  success,
  error,
}

extension SnackbarTypeExtension on SnackbarType {
  IconData get getIcon {
    switch (this) {
      case SnackbarType.error:
        return Icons.error_outline;
      case SnackbarType.info:
        return Icons.info_outline;
      case SnackbarType.success:
        return Icons.check;
    }
  }
}
