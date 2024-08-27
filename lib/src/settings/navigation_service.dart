import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  dynamic navigateTo(String routeName,
      {Map<dynamic, dynamic>? arguments,
      bool isReplacement = false,
      bool isAnimated = true}) {
    Map<dynamic, dynamic> argumentsMap = {
      'isAnimated': isAnimated,
    };
    if (arguments != null) {
      argumentsMap.addAll(arguments);
    }

    return isReplacement
        ? navigatorKey.currentState!
            .pushReplacementNamed(routeName, arguments: argumentsMap)
        : navigatorKey.currentState!
            .pushNamed(routeName, arguments: argumentsMap);
  }

  void popUntilAndPush(String popUntilRouteName, String pushRouteName,
      {Map<dynamic, dynamic>? arguments, bool isAnimated = true}) {
    Map<dynamic, dynamic> argumentsMap = {
      'isAnimated': isAnimated,
    };
    if (arguments != null) {
      argumentsMap.addAll(arguments);
    }
    navigatorKey.currentState!.popUntil(ModalRoute.withName(popUntilRouteName));
    navigateTo(pushRouteName, arguments: argumentsMap, isAnimated: isAnimated);
  }

  void popRepeatedly(int num) {
    for (var i = 0; i < num; i++) {
      navigatorKey.currentState!.pop();
    }
  }

  void popUntil(
    String routeName,
  ) {
    return navigatorKey.currentState!.popUntil(ModalRoute.withName(routeName));
  }

  void goBack({Object? result}) {
    return navigatorKey.currentState!.pop(result);
  }
}
