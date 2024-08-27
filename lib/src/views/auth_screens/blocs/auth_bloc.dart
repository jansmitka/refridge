import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refridge/src/domain/repositories/user_auth_repository.dart';
import 'package:refridge/src/services/snackbar/blocs/snackbar_bloc.dart';
import 'package:refridge/src/settings/get_it_setup.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

enum AuthScreenType {
  signIn,
  signUp,
  forgottenPassword,
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final _userAuthRepository = getIt<UserAuthRepository>();
  final _snackbarBloc = getIt<SnackbarBloc>();
  AuthBloc() : super(const AuthState()) {
    on<_Init>((event, emit) async {
      emit(
        state.copyWith(
          screenState: AuthScreenType.signIn,
          prevScreenState: AuthScreenType.signIn,
          isLoading: false,
          isError: false,
        ),
      );
    });
    on<_ChangeScreenState>((event, emit) async {
      emit(
        state.copyWith(
          prevScreenState: state.screenState,
          screenState: event.type,
          isLoading: false,
          isError: false,
        ),
      );
    });
    on<_SignInUser>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      final result =
          await _userAuthRepository.loginUser(event.email, event.password);
      if (result.isError) {
        _snackbarBloc.add(SnackbarEvent.showSnackBar(
            SnackbarType.error, 'Error', result.errorCode!));
      }

      emit(
        state.copyWith(
          isLoading: false,
        ),
      );
    });
    on<_SignInViaGoogle>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      final result = await _userAuthRepository.loginViaGoogle();

      if (result.isError) {
        _snackbarBloc.add(SnackbarEvent.showSnackBar(
            SnackbarType.error, 'Error', result.errorCode!));
      }

      emit(
        state.copyWith(
          isLoading: false,
        ),
      );
    });

    on<_SignUpUser>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      final result = await _userAuthRepository
          .createUser(event.email, event.password)
          .then((val) {
        emit(
          state.copyWith(
            isLoading: false,
          ),
        );
      });

      if (!isClosed) {
        if (result.isError) {
          _snackbarBloc.add(SnackbarEvent.showSnackBar(
              SnackbarType.error, 'Error', result.errorCode!));
        }
        emit(
          state.copyWith(
            isLoading: false,
          ),
        );
      }
    });
    on<_RecoverPassword>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      await _userAuthRepository
          .recoverPassword(
        event.email,
      )
          .then((val) {
        if (!isClosed) {
          if (val.isSuccess) {
            _snackbarBloc.add(const SnackbarEvent.showSnackBar(
              SnackbarType.success,
              'Recovered',
              'We have send Reset link to provided E-mail!',
            ));
          }
          if (val.isError) {
            _snackbarBloc.add(SnackbarEvent.showSnackBar(
                SnackbarType.error, 'Error', val.errorCode!));
          }

          emit(
            state.copyWith(
              isLoading: false,
            ),
          );
        }
      });
    });
    on<_LogoutUser>((event, emit) {
      getIt<FirebaseAuth>().signOut();
    });
  }
}
