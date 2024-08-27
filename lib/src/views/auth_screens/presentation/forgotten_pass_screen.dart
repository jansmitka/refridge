import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/views/auth_screens/blocs/auth_bloc.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/input_fields/text_input_field.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/widgetbook/texts/screen_title.dart';

class ForgottenPasswordScreen extends StatefulWidget {
  const ForgottenPasswordScreen({super.key});

  @override
  State<ForgottenPasswordScreen> createState() =>
      _ForgottenPasswordScreenState();
}

class _ForgottenPasswordScreenState extends State<ForgottenPasswordScreen> {
  final emailController = TextEditingController();
  final _recoverFormKey = GlobalKey<FormState>();

  void recoverTapped(BuildContext context) {
    if (_recoverFormKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            AuthEvent.recoverPassword(emailController.text),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return RFPadding.largeHorizontal(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ScreenTitle(
                    title: AppLocalizations.of(context)!.recover_screen_title,
                    onBack: () => context.read<AuthBloc>().add(
                          AuthEvent.changeScreenState(state.prevScreenState),
                        ),
                  ),
                  RFPadding.normalVertical(
                    child: Text(
                      AppLocalizations.of(context)!.recover_screen_desc,
                    ),
                  ),
                  Form(
                    key: _recoverFormKey,
                    child: RFInputField(
                      controller: emailController,
                      label: AppLocalizations.of(context)!.recover_screen_email,
                      icon: Icons.mail_outline,
                      isEnabled: !state.isLoading,
                      inputType: TextInputType.emailAddress,
                      validator: (value) {
                        String pattern =
                            r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                        RegExp regex = RegExp(pattern);
                        if (value == null || value.isEmpty) {
                          return AppLocalizations.of(context)!
                              .sign_in_screen_email;
                        } else if (!regex.hasMatch(value)) {
                          return AppLocalizations.of(context)!
                              .sign_in_screen_error_valid_email;
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ],
              ),
              PrimaryTextButton(
                lable: AppLocalizations.of(context)!.recover_screen_continue,
                onTap: () => recoverTapped(context),
                isLoading: state.isLoading,
              ),
            ],
          ),
        );
      },
    );
  }
}
