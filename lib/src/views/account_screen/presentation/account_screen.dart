import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:refridge/src/services/snackbar/blocs/snackbar_bloc.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/account_screen/bloc/account_bloc.dart';
import 'package:refridge/src/views/main_screen/blocs/user_bloc.dart';
import 'package:refridge/src/widgetbook/containers/user_image.dart';
import 'package:refridge/src/widgetbook/dialogs/modal_bottom_sheet.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';
import 'package:refridge/src/widgetbook/wrappers/screen_wrapper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  XFile? _image;
  final ImagePicker _picker = ImagePicker();

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
          getIt<AccountBloc>().add(
            AccountEvent.saveUserProfileImg(_image!),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<AccountBloc>()
        ..add(AccountEvent.init(context.read<UserBloc>().state.user)),
      child: BlocBuilder<AccountBloc, AccountState>(
        builder: (context, state) {
          return RFScreenWrapper(
            canBack: false,
            title: AppLocalizations.of(context)!.account_screen_title,
            suffixWidget: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.settings,
                color: RFColors.primaryColor,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RFPadding.largeVertical(
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Stack(
                      children: [
                        RFUserImage(
                          imgUrl: state.imageURL,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () => pickImage(
                              context,
                            ),
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: RFColors.primaryColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Icon(
                                Icons.edit,
                                color: RFColors.generalBg,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.read<SnackbarBloc>().add(
                          const SnackbarEvent.showSnackBar(
                            SnackbarType.info,
                            'Notifikace',
                            // 'This is dummy text for notification ',
                            'This is dummy text for notification jasjdjas asdjajsdjasd asdja sjda jsdjasdjasd ajsdajsd asdajsd ajdasdja s',
                          ),
                        );
                  },
                  icon: const Icon(Icons.notification_add),
                ),
                IconButton(
                  onPressed: () {
                    getIt<FirebaseAuth>().signOut();
                  },
                  icon: const Icon(Icons.logout),
                ),
                IconButton(
                  onPressed: () async {
                    await showRFBottomSheet<bool>(
                      context: context,
                      title: "Test",
                      builder: (context) => Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: const Column(
                          children: [
                            Text('test 1'),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Text('test 2'),
                            ),
                            Text('test 3'),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.list),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
