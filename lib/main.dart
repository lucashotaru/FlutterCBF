// ignore_for_file: use_build_context_synchronously, no_leading_underscores_for_local_identifiers, import_of_legacy_library_into_null_safe, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/Login.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'components/AppProvider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<AppProvider>(create: (_) => AppProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey,
      ),
      themeMode: context.watch<AppProvider>().getTheme(),
      home: FutureBuilder(
        future: _syncTema(context),
        builder: (context, snapshot) => const LoginPage(),
      ),
    );
  }

  Future<void> _syncTema(BuildContext context) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    context.read<AppProvider>().theme = _prefs.getString("theme") ?? "system";
  }
}