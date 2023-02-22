import 'package:flutter/material.dart';
import 'package:test/screens/home_screen.dart';
import 'package:test/screens/login_screen.dart';
import 'package:test/screens/register_screen.dart';

const kDeepLinkRoute = 'DeepLinkRoute';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.route: (context) {
    return const LoginScreen();
  },
  RegisterScreen.route: (context) {
    return const RegisterScreen();
  },
  HomeScreen.route: (context) {
    return const HomeScreen();
  },
};

PageRoute<dynamic> defaultOnGenerateRoute(RouteSettings settings) {
  return MaterialPageRoute(
    builder: routes[settings.name]!,
    settings: settings,
  );
}
