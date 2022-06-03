import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              child: Container(
            child: FittedBox(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/cc/98/cb/cc98cb959796a46b2fb1352f3302d1c7.jpg'),
                    ),
                    Text('Lucas', style: TextStyle(fontSize: 10)),
                    Text('Admin', style: TextStyle(fontSize: 5)),
                  ],
                )),
          )),
          Divider(),
          ListTile(
            leading: Icon(Icons.dataset_outlined),
            title: Text('Tabelas'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text('Estatística'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.newspaper_outlined),
            title: Text('Notícias'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.live_tv_outlined),
            title: Text('Transmissôes'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          SizedBox(height: 200),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
