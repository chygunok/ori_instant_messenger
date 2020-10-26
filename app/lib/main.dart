import 'package:app/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ORI',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: LoginPage(),
    );
  }
}
