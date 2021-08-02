import 'package:flutter/material.dart';
import 'package:ui_figma/myhome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
        ),
        primarySwatch: Colors.grey,
      ),
      home: MyHome(),
    );
  }
}
