import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/views/auth_screens/blocs/auth_bloc.dart';
import 'package:refridge/src/views/auth_screens/presentation/forgotten_pass_screen.dart';
import 'package:refridge/src/views/auth_screens/presentation/sign_in_screen.dart';
import 'package:refridge/src/views/auth_screens/presentation/sign_up_screen.dart';

class AuthScreensWrapper extends StatelessWidget {
  const AuthScreensWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: SafeArea(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => FocusScope.of(context).unfocus(),
              child: BlocProvider(
                create: (context) =>
                    getIt<AuthBloc>()..add(const AuthEvent.init()),
                child:
                    BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                  switch (state.screenState) {
                    case AuthScreenType.signIn:
                      return const SignInScreen();
                    case AuthScreenType.signUp:
                      return const SignUpScreen();
                    case AuthScreenType.forgottenPassword:
                      return const ForgottenPasswordScreen();
                    default:
                      return const SignInScreen();
                  }
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
