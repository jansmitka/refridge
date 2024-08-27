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

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordRetypeController = TextEditingController();
  final _signUpFormKey = GlobalKey<FormState>();
  bool isAgrred = false;
  bool is8chars = false;
  bool isCapital = false;
  bool isNumber = false;
  bool needsToAgree = false;

  void signUpTapped(BuildContext context) {
    if (!isAgrred) {
      setState(() {
        needsToAgree = true;
      });
    } else {
      setState(() {
        needsToAgree = false;
      });
      if (_signUpFormKey.currentState!.validate()) {
        context.read<AuthBloc>().add(
              AuthEvent.signUpUser(
                emailController.text,
                passwordController.text,
              ),
            );
      }
    }
  }

  void agreeTapped() {
    setState(() {
      isAgrred = !isAgrred;
    });
  }

  void passwordOnChanged(String input) {
    RegExp minChars = RegExp(r'^.{8,}$');
    RegExp capitalLetter = RegExp(r'.*[A-Z].*');
    RegExp oneNumber = RegExp(r'.*\d.*');

    setState(() {
      minChars.hasMatch(input) ? is8chars = true : is8chars = false;
      capitalLetter.hasMatch(input) ? isCapital = true : isCapital = false;
      oneNumber.hasMatch(input) ? isNumber = true : isNumber = false;
    });
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
                          maxWidth: 130,
                        ),
                        child: ColoredText(
                          onEnd: false,
                          text: AppLocalizations.of(context)!
                              .sign_up_screen_title,
                          style: Theme.of(context).textTheme.headlineLarge!,
                        ),
                      ),
                      RFPadding.normalVertical(
                        child: Text(
                          AppLocalizations.of(context)!.sign_up_screen_desc,
                        ),
                      ),
                    ],
                  ),
                  RFPadding.normalVertical(
                    child: Form(
                      key: _signUpFormKey,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RFInputField(
                            controller: emailController,
                            label: AppLocalizations.of(context)!
                                .sign_up_screen_email,
                            icon: Icons.mail_outline,
                            isEnabled: !state.isLoading,
                            inputType: TextInputType.emailAddress,
                            validator: (value) {
                              String pattern =
                                  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                              RegExp regex = RegExp(pattern);
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!
                                    .sign_up_screen_error_no_email;
                              } else if (!regex.hasMatch(value)) {
                                return AppLocalizations.of(context)!
                                    .sign_up_screen_error_valid_email;
                              } else {
                                return null;
                              }
                            },
                          ),
                          RFPadding.normalVertical(
                            child: Column(
                              children: [
                                RFInputField(
                                  controller: passwordController,
                                  onChanged: passwordOnChanged,
                                  showSuffixVisible: true,
                                  inputType: TextInputType.text,
                                  label: AppLocalizations.of(context)!
                                      .sign_up_screen_password,
                                  icon: Icons.lock_outline,
                                  isEnabled: !state.isLoading,
                                  validator: (value) {
                                    String pattern =
                                        r'^(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}$';
                                    RegExp regex = RegExp(pattern);
                                    if (value == null || value.isEmpty) {
                                      return AppLocalizations.of(context)!
                                          .sign_up_screen_error_no_password;
                                    } else if (!regex.hasMatch(value)) {
                                      return AppLocalizations.of(context)!
                                          .sign_up_screen_error_invalid_password;
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                RFPadding.small(
                                  bottom: false,
                                  child: SizedBox(
                                    width: 260,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              '- ${AppLocalizations.of(context)!.sign_up_screen_8_chars}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                    fontWeight: is8chars
                                                        ? FontWeight.normal
                                                        : null,
                                                    color: is8chars
                                                        ? RFColors.primaryColor
                                                        : RFColors
                                                            .textSecondary,
                                                  ),
                                            ),
                                            Text(
                                              '- ${AppLocalizations.of(context)!.sign_up_screen_capital_letter}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                    fontWeight: isCapital
                                                        ? FontWeight.normal
                                                        : null,
                                                    color: isCapital
                                                        ? RFColors.primaryColor
                                                        : RFColors
                                                            .textSecondary,
                                                  ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              '- ${AppLocalizations.of(context)!.sign_up_screen_number}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall!
                                                  .copyWith(
                                                    fontWeight: isNumber
                                                        ? FontWeight.normal
                                                        : null,
                                                    color: isNumber
                                                        ? RFColors.primaryColor
                                                        : RFColors
                                                            .textSecondary,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RFInputField(
                            controller: passwordRetypeController,
                            showSuffixVisible: true,
                            isEnabled: !state.isLoading,
                            label: AppLocalizations.of(context)!
                                .sign_up_screen_password_retype,
                            icon: Icons.lock_outline,
                            inputType: TextInputType.text,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!
                                    .sign_up_screen_error_no_retype;
                              } else if (value != passwordController.text) {
                                return AppLocalizations.of(context)!
                                    .sign_up_screen_error_password_not_match;
                              } else {
                                return null;
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  RFPadding.normalVertical(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: agreeTapped,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: isAgrred
                                  ? RFColors.primaryColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(6),
                              border: needsToAgree
                                  ? Border.all(
                                      width: 2, color: RFColors.primaryColor)
                                  : !isAgrred
                                      ? Border.all(
                                          width: 1, color: RFColors.greyPrimary)
                                      : null,
                            ),
                            child: isAgrred
                                ? const Center(
                                    child: Icon(
                                      Icons.check,
                                      color: RFColors.generalBg,
                                      size: 14,
                                    ),
                                  )
                                : null,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RFPadding.normalHorizontal(
                              child: GestureDetector(
                                onTap: () {},
                                child: Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                      text: AppLocalizations.of(context)!
                                          .sign_up_screen_agree,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                    TextSpan(
                                      text: AppLocalizations.of(context)!
                                          .sign_up_screen_tos,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: RFColors.primaryColor,
                                          ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            RFPadding.normalHorizontal(
                              child: GestureDetector(
                                onTap: () {},
                                child: Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                      text: AppLocalizations.of(context)!
                                          .sign_up_screen_agree,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                    TextSpan(
                                      text: AppLocalizations.of(context)!
                                          .sign_up_screen_privacy_policy,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: RFColors.primaryColor,
                                          ),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  PrimaryTextButton(
                    lable: AppLocalizations.of(context)!.sign_up_screen_sign_up,
                    onTap: () => signUpTapped(context),
                    isLoading: state.isLoading,
                  ),
                  const RFPadding.normalVertical(
                    child: OrDivider(),
                  ),
                  ImageUnfilledButton(
                    lable: AppLocalizations.of(context)!
                        .sign_up_screen_sign_up_google,
                    imagePath: RFImages.googleLogo,
                    onTap: () => signInViaGoogle(context),
                  ),
                  RFPadding.largeVertical(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLocalizations.of(context)!
                              .sign_up_screen_have_account,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        RFPadding.xSmallHorizontal(
                          child: GestureDetector(
                            onTap: () => context.read<AuthBloc>().add(
                                  const AuthEvent.changeScreenState(
                                      AuthScreenType.signIn),
                                ),
                            child: Text(
                              AppLocalizations.of(context)!
                                  .sign_up_screen_sign_in,
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
