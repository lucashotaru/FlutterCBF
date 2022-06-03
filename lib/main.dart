import 'package:flutter/material.dart';
import 'package:my_app/pages/NavDrawer_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FittedBox(
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Posição',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Time',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'P',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'V',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'D',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'E',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(
                    Center(
                      child: Text('1'),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Image(image: NetworkImage('https://i0.wp.com/www.fefumerj.com.br/wp-content/uploads/2019/10/Fluminense.png'))
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Text('1'),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Text('1'),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Text('1'),
                    ),
                  ),
                  DataCell(
                    Center(
                      child: Text('1'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
