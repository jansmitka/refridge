import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/widgetbook/wrappers/screen_wrapper.dart';

class FridgeScreen extends StatelessWidget {
  const FridgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RFScreenWrapper(
      canBack: false,
      title: AppLocalizations.of(context)!.fridge_screen_title,
      child: Container(),
    );
  }
}
