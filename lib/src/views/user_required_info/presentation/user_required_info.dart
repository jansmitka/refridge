import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:refridge/src/domain/models/rf_user.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/user_required_info/bloc/required_user_info_bloc.dart';
import 'package:refridge/src/widgetbook/buttons/primary_text_button.dart';
import 'package:refridge/src/widgetbook/containers/user_image.dart';
import 'package:refridge/src/widgetbook/input_fields/text_input_field.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:refridge/src/widgetbook/texts/colored_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserRequiredInfoScreen extends StatefulWidget {
  final RFUser? user;
  const UserRequiredInfoScreen({
    super.key,
    required this.user,
  });

  @override
  State<UserRequiredInfoScreen> createState() => _UserRequiredInfoScreenState();
}

class _UserRequiredInfoScreenState extends State<UserRequiredInfoScreen> {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final userInfoFormKey = GlobalKey<FormState>();
  XFile? _image;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    if (widget.user != null) {
      if (widget.user!.firstname != null) {
        firstnameController.text = widget.user!.firstname!;
      }
      if (widget.user!.lastname != null) {
        lastnameController.text = widget.user!.lastname!;
      }
    }
  }

  Future<void> pickImage(BuildContext context) async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      final compressedFile = await FlutterImageCompress.compressAndGetFile(
        pickedFile.path,
        pickedFile.path.replaceFirst('.jpg', '_compressed.jpg'),
        quality: 50,
      );

      if (compressedFile != null) {
        setState(() {
          _image = compressedFile;
        });
        if (_image != null) {
          getIt<RequiredUserInfoBloc>().add(
            RequiredUserInfoEvent.saveUserProfileImg(_image!),
          );
        }
      }
    }
  }

  void updateInfoTapped(BuildContext context) {
    if (userInfoFormKey.currentState!.validate()) {
      context.read<RequiredUserInfoBloc>().add(
            RequiredUserInfoEvent.saveUserInfo(
              firstnameController.text,
              lastnameController.text,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<RequiredUserInfoBloc>()
        ..add(RequiredUserInfoEvent.init(widget.user)),
      child: BlocBuilder<RequiredUserInfoBloc, RequiredUserInfoState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: SafeArea(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: RFPadding.largeHorizontal(
                      child: Column(
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
                                          .user_info_screen_title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge!,
                                    ),
                                  ),
                                  RFPadding.normalVertical(
                                    child: Text(
                                      AppLocalizations.of(context)!
                                          .user_info_screen_desc,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Column(
                                children: [
                                  RFUserImage(
                                    imgUrl: state.imageURL,
                                  ),
                                  GestureDetector(
                                    onTap: () => pickImage(
                                      context,
                                    ),
                                    child: RFPadding.small(
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .user_info_screen_choose,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              color: RFColors.primaryColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              RFPadding.normalVertical(
                                child: Form(
                                  key: userInfoFormKey,
                                  child: Column(
                                    children: [
                                      RFInputField(
                                        controller: firstnameController,
                                        label: AppLocalizations.of(context)!
                                            .user_info_screen_firstname,
                                        icon: Icons.person_outlined,
                                        isEnabled: !state.isLoading,
                                        inputType: TextInputType.text,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return AppLocalizations.of(context)!
                                                .user_info_screen_error_no_firstname;
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                      RFPadding.normalVertical(
                                        child: RFInputField(
                                          controller: lastnameController,
                                          label: AppLocalizations.of(context)!
                                              .user_info_screen_lastname,
                                          icon: Icons.person_outlined,
                                          isEnabled: !state.isLoading,
                                          inputType: TextInputType.text,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return AppLocalizations.of(
                                                      context)!
                                                  .user_info_screen_error_no_lastname;
                                            } else {
                                              return null;
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          PrimaryTextButton(
                            lable: AppLocalizations.of(context)!
                                .user_info_screen_continue,
                            onTap: () => updateInfoTapped(context),
                            isLoading: state.isLoading,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
