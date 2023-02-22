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
                    decoration: const InputDecoration(
                      labelText: 'E-mail',
                      hintText: 'Digite seu E-mail',
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextFormField(
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
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        )),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(16)),
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 3, 57, 100),
                        )),
                    onPressed: () =>
                        Navigator.pushNamed(context, HomeScreen.route),
                    child: Text(
                      'Entrar'.toUpperCase(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
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
