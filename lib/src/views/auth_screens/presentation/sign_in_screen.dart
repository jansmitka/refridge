import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/settings/constants/images.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/auth_screens/blocs/auth_bloc.dart';
import 'package:refridge/src/widgetbook/buttons/image_button_unfilled.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/dividers/or_divider.dart';
import 'package:refridge/src/widgetbook/input_fields/text_input_field.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/widgetbook/texts/colored_text.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _signInFormKey = GlobalKey<FormState>();

  void signInTapped(BuildContext context) {
    if (_signInFormKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            AuthEvent.signInUser(
              emailController.text,
              passwordController.text,
            ),
          );
    }
  }

  void signInViaGoogle(BuildContext context) {
    context.read<AuthBloc>().add(
          const AuthEvent.signInViaGoogle(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return RFPadding.largeHorizontal(
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 175,
                        ),
                        child: ColoredText(
                          onEnd: false,
                          text: AppLocalizations.of(context)!
                              .sign_in_screen_title,
                          style: Theme.of(context).textTheme.headlineLarge!,
                        ),
                      ),
                      RFPadding.normalVertical(
                        child: Text(
                          AppLocalizations.of(context)!.sign_in_screen_desc,
                        ),
                      ),
                    ],
                  ),
                  RFPadding.normalVertical(
                    child: Form(
                      key: _signInFormKey,
                      child: Column(
                        children: [
                          RFInputField(
                            controller: emailController,
                            label: AppLocalizations.of(context)!
                                .sign_in_screen_email,
                            icon: Icons.mail_outline,
                            isEnabled: !state.isLoading,
                            inputType: TextInputType.emailAddress,
                            validator: (value) {
                              // Define the email pattern using a regex
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
                          RFPadding.normalVertical(
                            child: RFInputField(
                              controller: passwordController,
                              inputType: TextInputType.text,
                              isEnabled: !state.isLoading,
                              showSuffixVisible: true,
                              label: AppLocalizations.of(context)!
                                  .sign_in_screen_password,
                              icon: Icons.lock_outline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!
                                .sign_in_screen_dont_have_account,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          RFPadding.xSmallHorizontal(
                            child: GestureDetector(
                              onTap: () => context.read<AuthBloc>().add(
                                    const AuthEvent.changeScreenState(
                                        AuthScreenType.signUp),
                                  ),
                              child: Text(
                                AppLocalizations.of(context)!
                                    .sign_in_screen_sign_up,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: RFColors.primaryColor,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!
                                .sign_in_screen_forgot_password,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          RFPadding.xSmallHorizontal(
                            child: GestureDetector(
                              onTap: () => context.read<AuthBloc>().add(
                                  const AuthEvent.changeScreenState(
                                      AuthScreenType.forgottenPassword)),
                              child: Text(
                                AppLocalizations.of(context)!
                                    .sign_in_screen_recover_password,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: RFColors.primaryColor,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  PrimaryTextButton(
                    lable: AppLocalizations.of(context)!.sign_in_screen_sign_in,
                    onTap: () => signInTapped(context),
                    isLoading: state.isLoading,
                  ),
                  const RFPadding.normalVertical(
                    child: OrDivider(),
                  ),
                  ImageUnfilledButton(
                    lable: AppLocalizations.of(context)!
                        .sign_in_screen_sign_in_google,
                    imagePath: RFImages.googleLogo,
                    onTap: () => signInViaGoogle(context),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
