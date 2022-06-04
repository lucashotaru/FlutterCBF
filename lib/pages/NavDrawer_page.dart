// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          const SizedBox(height: 50),
          ListTile(
            leading: const Icon(Icons.admin_panel_settings_outlined),
            title: const Text('Admin'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          const SizedBox(height: 160),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Sair'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
