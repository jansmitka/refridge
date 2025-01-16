import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:refridge/src/domain/models/fridge.dart';
import 'package:refridge/src/domain/models/rf_user.dart';
import 'package:refridge/src/domain/models/shopping_list.dart';
import 'package:refridge/src/views/add_to_fridge_screen/presentation/add_to_fridge_screen.dart';
import 'package:refridge/src/views/add_to_list_screen/presentation/add_to_list_screen.dart';
import 'package:refridge/src/views/auth_screens/presentation/auth_screens_wrapper.dart';
import 'package:refridge/src/views/auth_screens/presentation/sign_in_screen.dart';
import 'package:refridge/src/views/auth_screens/presentation/sign_up_screen.dart';
import 'package:refridge/src/views/first_launch_screen/views/first_launch_screen.dart';
import 'package:refridge/src/views/main_screen/presentation/main_screen.dart';
import 'package:refridge/src/views/user_auth_wrapper/presentation/user_auth_wrapper.dart';

import 'routes.dart';

Route<Widget> generateRoutes(RouteSettings settings) {
  debugPrint('RouteGenerated -> ${settings.name}');
  final args = settings.arguments as Map<dynamic, dynamic>;
  Widget view;
  switch (settings.name) {
    case Routes.mainScreen:
      view = MainScreen(
        user: args['user'] as User,
      );
      break;
    case Routes.firstLaunchScreen:
      view = const FirstLauchScreen();
      break;
    case Routes.userAuthWrapper:
      view = UserAuthWrapper();
      break;
    case Routes.authScreensWrapper:
      view = const AuthScreensWrapper();
      break;
    case Routes.signInScreen:
      view = const SignInScreen();
      break;
    case Routes.signUpScreen:
      view = const SignUpScreen();
      break;
    case Routes.addToFridgeScreen:
      view = AddToFridgeScreen(
        user: args['user'] as RFUser,
        selectedFridge: args['selectedFridge'] as Fridge,
        fridges: args['fridges'] as List<Fridge>,
      );
      break;
    case Routes.addToListScreen:
      view = AddToListScreen(
        user: args['user'] as RFUser,
        selectedList: args['selectedList'] as ShoppingList,
        lists: args['lists'] as List<ShoppingList>,
      );
      break;

    default:
      view = Scaffold(
        body: Center(
          child: Text('No path for ${settings.name}'),
        ),
      );
  }

  return MaterialPageRoute(
    settings: settings,
    builder: (context) => MediaQuery(
      data: MediaQuery.of(context).copyWith(),
      child: view,
    ),
  );
}
