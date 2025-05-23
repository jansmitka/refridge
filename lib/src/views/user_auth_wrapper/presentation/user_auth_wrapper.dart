import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/navigation_service.dart';
import 'package:refridge/src/settings/router/routes.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/user_auth_wrapper/application/bloc/user_auth_bloc.dart';

class UserAuthWrapper extends StatelessWidget {
  final navigator = getIt<NavigationService>();
  UserAuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<UserAuthBloc>(),
      child: BlocListener<UserAuthBloc, UserAuthState>(
        listener: (context, state) {
          state.when(
            unauthenticated: () {
              navigator.navigateTo(
                Routes.authScreensWrapper,
                isReplacement: false,
              );
            },
            authenticated: (user) {
              navigator.navigateTo(
                Routes.mainScreen,
                arguments: {'user': user},
                isReplacement: false,
              );
            },
          );
        },
        child: const Scaffold(
          backgroundColor: RFColors.generalBg,
          body: null,
        ),
      ),
    );
  }
}
