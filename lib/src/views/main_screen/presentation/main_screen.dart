import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refridge/src/settings/get_it_setup.dart';
import 'package:refridge/src/settings/theme/colors.dart';
import 'package:refridge/src/views/account_screen/presentation/account_screen.dart';
import 'package:refridge/src/views/discovery_screen/presentation/discovery_screen.dart';
import 'package:refridge/src/views/fridge_screen/bloc/fridge_management_bloc.dart';
import 'package:refridge/src/views/fridge_screen/presentation/fridge_screen.dart';
import 'package:refridge/src/views/home_screen/presentation/home_screen.dart';
import 'package:refridge/src/views/main_screen/blocs/main_bloc.dart';
import 'package:refridge/src/views/main_screen/presentation/containers/navigation_bar.dart';
import 'package:refridge/src/views/shopping_lists_screen.dart/presentation/shopping_lists_screen.dart';
import 'package:refridge/src/views/user_required_info/presentation/user_required_info.dart';

class MainScreen extends StatefulWidget {
  final User user;
  const MainScreen({
    super.key,
    required this.user,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget getScreen(MainState state) {
    switch (state.screenState) {
      case ScreenState.home:
        return const HomeScreen();
      case ScreenState.fridges:
        return const FridgeScreen();
      case ScreenState.discovery:
        return const DiscoveryScreen();
      case ScreenState.lists:
        return const ShoppingListsScreen();
      case ScreenState.account:
        return const AccountScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<MainBloc>()..add(MainEvent.getUserData(widget.user)),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          if (state.isLoading || state.user == null) {
            return const Scaffold(
              body: Center(
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(
                    color: RFColors.primaryColor,
                  ),
                ),
              ),
            );
          }
          if (state.missingUserInfo) {
            return UserRequiredInfoScreen(
              user: state.user,
            );
          }
          if (!state.isLoading && state.user != null) {
            return MultiBlocProvider(
              providers: [
                BlocProvider.value(
                  value: getIt<FridgeManagementBloc>()
                    ..add(
                      FridgeManagementEvent.init(
                        state.user!,
                      ),
                    ),
                ),
              ],
              child: Scaffold(
                body: getScreen(state),
                bottomNavigationBar: NavBar(
                  state: state,
                ),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
