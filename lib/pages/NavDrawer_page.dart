// ignore_for_file: file_names, import_of_legacy_library_into_null_safe, no_leading_underscores_for_local_identifiers, use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/AppProvider.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppProvider _appWatcher = context.watch<AppProvider>();

    return SafeArea(
      child: Drawer(
        //backgroundColor: Colors.blueGrey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: FittedBox(
                alignment: Alignment.center,
                child: Column(
                  children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/cc/98/cb/cc98cb959796a46b2fb1352f3302d1c7.jpg'),
                    ),
                    Text('Lucas', style: TextStyle(fontSize: 10)),
                    Text('Admin', style: TextStyle(fontSize: 5)),
                  ],
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListTile(
              leading: const Icon(Icons.dataset_outlined),
              title: const Text('Tabelas'),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text('Estatística'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(Icons.newspaper_outlined),
              title: const Text('Notícias'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(Icons.live_tv_outlined),
              title: const Text('Transmissôes'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            const SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.admin_panel_settings_outlined),
              title: const Text('Admin'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: ToggleButtons(
                // ignore: sort_child_properties_last
                children: const [
                  Icon(CupertinoIcons.device_phone_portrait),
                  Icon(CupertinoIcons.cloud_sun),
                  Icon(CupertinoIcons.moon_stars),
                ],
                isSelected: [
                  _appWatcher.theme == "system",
                  _appWatcher.theme == "light",
                  _appWatcher.theme == "dark",
                ],
                onPressed: (index) async => await _setTheme(index, context),
              ),
            ),
            const SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Sair'),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _setTheme(int index, BuildContext context) async {
    String _theme = index == 0 ? "system" : (index == 1 ? "light" : "dark");
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString("theme", _theme);
    context.read<AppProvider>().theme = _theme;
  }
}
