import 'package:f_sqflite_db1/home.dart';
import 'package:flutter/material.dart';

void main() async{
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sqflite DB',

      home: Home(),
    );
  }
}
