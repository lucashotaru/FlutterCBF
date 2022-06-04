// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Apis {
  getTabela() async{
    return await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  }
}
