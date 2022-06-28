// ignore_for_file: non_constant_identifier_names, unnecessary_import, use_build_context_synchronously, avoid_print

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../api/apis.dart';

class LoginController extends ChangeNotifier {
  late Apis api;
  TextEditingController loginController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  login(BuildContext context) async {
    if (loginController.text.isNotEmpty && senhaController.text.isNotEmpty) {
      var response = await http.post(
        Uri.parse('https://reqres.in/api/users?page=2'),
        body: ({"email": loginController.text, "senha": senhaController.text}),
      );
      if (response.statusCode == 200) {
        final token = jsonDecode(response.body);
        print("Login Token$token");
      } else {
        return ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Verifique seu login e senha"),
          ),
        );
      }
    } else {
      return ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Falha ao conectar"),
        ),
      );
    }
  }
}
