import 'package:flutter/material.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/main_screen/blocs/main_bloc.dart';
import 'package:refridge/src/views/main_screen/presentation/containers/navigation_bar_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:refridge/src/widgetbook/paddings/custom_paddings.dart';

class NavBar extends StatelessWidget {
  final MainState state;
  const NavBar({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: RFColors.greySecondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4), // Shadow color
            spreadRadius: 2, // Spread of the shadow
            blurRadius: 10, // Blur effect
            offset: const Offset(0, 4), // Shadow position (x, y)
          ),
        ],
      ),
      child: SafeArea(
        child: IntrinsicHeight(
          child: RFPadding.normalAll(
            bottom: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavBarItem(
                  type: ScreenState.home,
                  icon: Icons.home_outlined,
                  iconActive: Icons.home,
                  label: AppLocalizations.of(context)!.main_screen_home_screen,
                  isActive: state.screenState == ScreenState.home,
                ),
                NavBarItem(
                  type: ScreenState.fridges,
                  icon: Icons.kitchen_outlined,
                  iconActive: Icons.kitchen,
                  label:
                      AppLocalizations.of(context)!.main_screen_fridges_screen,
                  isActive: state.screenState == ScreenState.fridges,
                ),
                NavBarItem(
                  type: ScreenState.discovery,
                  icon: Icons.receipt_outlined,
                  iconActive: Icons.receipt,
                  label:
                      AppLocalizations.of(context)!.main_screen_discover_screen,
                  isActive: state.screenState == ScreenState.discovery,
                ),
                NavBarItem(
                  type: ScreenState.lists,
                  icon: Icons.shopping_cart_outlined,
                  iconActive: Icons.shopping_cart,
                  label: AppLocalizations.of(context)!.main_screen_lists_screen,
                  isActive: state.screenState == ScreenState.lists,
                ),
                NavBarItem(
                  type: ScreenState.account,
                  icon: Icons.person_outline,
                  iconActive: Icons.person,
                  label:
                      AppLocalizations.of(context)!.main_screen_account_screen,
                  isActive: state.screenState == ScreenState.account,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
