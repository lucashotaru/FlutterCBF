// ignore_for_file: library_private_types_in_public_api, unnecessary_const

import 'package:flutter/material.dart';
import 'package:my_app/pages/NavDrawer_page.dart';
import 'package:dropdown_search/dropdown_search.dart';

import 'controllers/main_controller.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final MainController _controller = MainController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Form(
                child: Column(
                  children: [
                    DropdownSearch<String>(
                      popupProps: const PopupProps.dialog(),
                      items: const [
                        "Campeonato Brasileiro",
                        "Tunisia",
                        'Canada'
                      ],
                      autoValidateMode: AutovalidateMode.onUserInteraction,
                      dropdownDecoratorProps: const DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          labelText: 'Campeonato',
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      onChanged: (campeonato) {
                        _controller.controllerCampeonato.text = campeonato.toString();
                        _controller.iniciarTabela();
                      },
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: DropdownSearch<String>(
                            popupProps: const PopupProps.menu(),
                            items: const ["Série A", "Série B", 'Série C'],
                            selectedItem: "Série A",
                            autoValidateMode:
                                AutovalidateMode.onUserInteraction,
                            dropdownDecoratorProps:
                                const DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: 'Série',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 150,
                          child: DropdownSearch<String>(
                            popupProps: const PopupProps.menu(),
                            items: const ["2022", "2021", '2019'],
                            selectedItem: "2022",
                            autoValidateMode:
                                AutovalidateMode.onUserInteraction,
                            dropdownDecoratorProps:
                                const DropDownDecoratorProps(
                              dropdownSearchDecoration: InputDecoration(
                                labelText: 'Ano',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            const SizedBox(child: Text('Tabelas de jogos')),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('')),
                DataColumn(label: Text('Time')),
                DataColumn(label: Text('P')),
                DataColumn(label: Text('V')),
                DataColumn(label: Text('D')),
                DataColumn(label: Text('E')),
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
                        child: ClipRRect(
                          child: Image(
                              image: NetworkImage(
                                  'https://logodetimes.com/times/sao-paulo/logo-sao-paulo-256.png')),
                        ),
                      ),
                    ),
                    DataCell(Center(child: Text('1'))),
                    DataCell(Center(child: Text('1'))),
                    DataCell(Center(child: Text('1'))),
                    DataCell(Center(child: Text('1'))),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Center(
                        child: Text('2'),
                      ),
                    ),
                    DataCell(
                      Center(
                        child: ClipRRect(
                          child: Image(
                              image: NetworkImage(
                                  'https://logodetimes.com/times/red-bull-bragantino/logo-red-bull-bragantino-256.png')),
                        ),
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
          ],
        ),
      ),
    );
  }
}
