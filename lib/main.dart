import 'package:flutter/material.dart';
import 'package:test/routes.dart';
import 'package:test/screens/login_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.route,
      onGenerateRoute: defaultOnGenerateRoute,
    );
  }
}
