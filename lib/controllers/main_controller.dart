// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import '../api/apis.dart';
import '../models/tabelaModel.dart';

class MainController extends ChangeNotifier {
  late TabelaModel tabela;
  late Apis api;
  MainController(){
    iniciarTabela();
  }

  TextEditingController controllerCampeonato = TextEditingController();

  iniciarTabela()async{
    var a = api.getTabela();
    return a;
  }
}
