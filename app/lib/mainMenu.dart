import 'package:flutter/material.dart';
import 'package:app/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          color: Colors.white,
          margin: EdgeInsets.zero,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                color: Colors.red,
              ),
              Container(
                alignment: Alignment.topRight,
                color: Colors.blue,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                color: Colors.green,
              ),
              Container(
                alignment: Alignment.bottomRight,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
