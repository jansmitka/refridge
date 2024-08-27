import 'package:flutter/material.dart';

class RouteObserver extends NavigatorObserver {
  final List<Route<dynamic>> _routeStack = [];

  List<Route<dynamic>> get routeStack => List.unmodifiable(_routeStack);

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.add(route);
    printCurrentStack();
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.removeLast();
    printCurrentStack();
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    _routeStack.remove(route);
    printCurrentStack();
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (oldRoute != null && newRoute != null) {
      final index = _routeStack.indexOf(oldRoute);
      if (index != -1) {
        _routeStack[index] = newRoute;
      }
    }
    printCurrentStack();
  }

  void printCurrentStack() {
    print('Current Navigation Stack:');
    for (var route in _routeStack) {
      print(route.settings.name);
    }
  }
}
