import 'package:flutter/material.dart';
import 'package:test/utils.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  static String route = '$RegisterScreen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _controllerName = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerPassword = TextEditingController();
  late final ValueNotifier<bool> valid = ValueNotifier(false);
  bool _validator(String value) {
    final regex = RegExp(regexEmail);

    return regex.hasMatch(value);
  }

  void _isValidatorListener() {
    if (!_validator(_controllerEmail.text) &&
        _controllerPassword.text.isEmpty &&
        _controllerPassword.text.isEmpty) {
      valid.value = false;
    }
    if (_validator(_controllerEmail.text) &&
        _controllerPassword.text.isNotEmpty &&
        _controllerName.text.isNotEmpty) {
      valid.value = true;
    }
  }

  @override
  void initState() {
    _controllerEmail.addListener(_isValidatorListener);
    _controllerPassword.addListener(_isValidatorListener);
    _controllerName.addListener(_isValidatorListener);
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
              'Cadastre-se agora mesmo',
              style: theme.textTheme.headline5!.copyWith(
                color: const Color.fromARGB(255, 3, 57, 100),
              ),
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: _controllerName,
                    decoration: const InputDecoration(
                      labelText: 'Nome completo',
                      hintText: 'Digite seu nome',
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
                    controller: _controllerEmail,
                    validator: (text) {
                      if (!_validator(text!)) {
                        return 'informe e-mail válido';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'E-mail',
                      hintText: 'Digite seu E-mail',
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
                      'Cadastrar'.toUpperCase(),
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
                        Navigator.pushNamed(context, LoginScreen.route),
                    child: Text(
                      'Já tem cadastro?',
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
