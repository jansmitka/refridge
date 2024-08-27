import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/domain/models/rf_user.dart';
import 'package:refridge/src/domain/repositories/user_reporitory.dart';
import 'package:refridge/src/settings/get_it_setup.dart';

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
  final _userRepository = getIt<UserRepository>();
  final _firebaseMessaging = getIt<FirebaseMessaging>();
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
    on<_GetUserData>(
      (event, emit) async {
        try {
          emit(
            state.copyWith(
              isLoading: true,
              isError: false,
            ),
          );
          Stream<RFUser> userStream =
              _userRepository.getUserStream(event.user.uid);

          String? token = await _firebaseMessaging.getToken();
          if (token != null) {
            await _userRepository.updateUserFcmToken(event.user.uid, token);
          }

          await for (final user in userStream) {
            emit(
              state.copyWith(
                isLoading: false,
                isError: false,
                user: user,
                missingUserInfo: user.missingRequiredInfo(),
              ),
            );
          }
        } catch (error) {
          debugPrint('MainBloc error: _GetUserData: error: $error');
          emit(
            state.copyWith(
              isLoading: false,
              isError: true,
            ),
          );
        }
      },
    );
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
