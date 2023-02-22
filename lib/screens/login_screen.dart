import 'package:flutter/material.dart';
import 'package:test/screens/register_screen.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  static String route = '$LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _controller = TextEditingController();
  final _controllerPassword = TextEditingController();
  late final ValueNotifier<bool> valid = ValueNotifier(false);

  bool _validator(String value) {
    final regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    return regex.hasMatch(value);
  }

  void _isValidatorListener() {
    if (!_validator(_controller.text) && _controllerPassword.text.isEmpty) {
      valid.value = false;
    }
    if (_validator(_controller.text) && _controllerPassword.text.isNotEmpty) {
      valid.value = true;
    }
  }

  @override
  void initState() {
    _controller.addListener(_isValidatorListener);
    _controllerPassword.addListener(_isValidatorListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Entre com seu e-mail e senha para acessar sua conta',
              style: theme.textTheme.headline5!.copyWith(
                color: const Color.fromARGB(255, 3, 57, 100),
              ),
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: _controller,
                    validator: (text) {
                      if (!_validator(text!)) {
                        return 'informe e-mail válido';
                      }
                      return null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      labelText: 'E-mail',
                      hintText: 'Digite seu E-mail',
                      errorStyle: TextStyle(
                        color: Colors.red,
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: _controllerPassword,
                    decoration: const InputDecoration(
                      labelText: 'Senha',
                      hintText: 'Digite sua senha',
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: 400,
                  child: ValueListenableBuilder(
                    valueListenable: valid,
                    child: Text(
                      'Entrar'.toUpperCase(),
                    ),
                    builder: (context, value, child) {
                      return ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          )),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(16)),
                        ),
                        onPressed: value
                            ? () =>
                                Navigator.pushNamed(context, HomeScreen.route)
                            : null,
                        child: child,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, RegisterScreen.route),
                    child: Text(
                      'Ainda não tem cadastro?',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: Colors.blueAccent),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
