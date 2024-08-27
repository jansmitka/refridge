import 'package:flutter/material.dart';
import 'package:refridge/src/widgetbook/wrappers/screen_wrapper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShoppingListsScreen extends StatelessWidget {
  const ShoppingListsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RFScreenWrapper(
      canBack: false,
      title: AppLocalizations.of(context)!.shopping_lists_screen_title,
      child: Container(),
    );
  }
}
