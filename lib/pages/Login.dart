// ignore_for_file: no_leading_underscores_for_local_identifiers, file_names, non_constant_identifier_names, unused_local_variable, unused_import
import 'package:flutter/material.dart';
import '../controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = LoginController();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 35),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: loginController.loginController,
                  decoration: const InputDecoration(
                    labelText: "Login",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: loginController.senhaController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Senha",
                    border: OutlineInputBorder(),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.remove_red_eye_outlined),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                OutlinedButton.icon(
                    onPressed: () {
                      loginController.login(context);
                    },
                    icon: const Icon(Icons.login_outlined),
                    label: const Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
