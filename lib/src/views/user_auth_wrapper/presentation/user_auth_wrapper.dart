import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/navigation_service.dart';
import 'package:refridge/src/views/auth_screens/presentation/auth_screens_wrapper.dart';
import 'package:refridge/src/views/main_screen/presentation/main_screen.dart';
import 'package:refridge/src/views/user_auth_wrapper/application/bloc/user_auth_bloc.dart';

class UserAuthWrapper extends StatelessWidget {
  final navigator = getIt<NavigationService>();
  UserAuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<UserAuthBloc>(),
      child: BlocBuilder<UserAuthBloc, UserAuthState>(
        builder: (context, state) {
          return state.when(unauthenticated: () {
            return const AuthScreensWrapper();
          }, authenticated: (user) {
            return MainScreen(user: user);
          });
        },
      ),
    );
  }
}
