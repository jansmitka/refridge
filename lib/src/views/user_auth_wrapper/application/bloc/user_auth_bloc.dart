import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth_event.dart';
part 'user_auth_state.dart';
part 'user_auth_bloc.freezed.dart';

class UserAuthBloc extends Bloc<UserAuthEvent, UserAuthState> {
  final FirebaseAuth _firebaseAuth;
  UserAuthBloc(this._firebaseAuth) : super(const _Unauthenticated()) {
    on<UserAuthEvent>((event, emit) {
      event.when(authStateChanged: (user) {
        if (user != null) {
          emit(UserAuthState.authenticated(user));
        } else {
          emit(const UserAuthState.unauthenticated());
        }
      });
    });

    _firebaseAuth.authStateChanges().listen((user) {
      add(UserAuthEvent.authStateChanged(user));
    });
  }
}
