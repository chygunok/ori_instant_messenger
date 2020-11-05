import 'package:flutter/material.dart';
import 'package:app/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app/widgets.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: MainAppBar(context),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text('Мистер Твистер'),
                accountEmail: Text("pizdyk@sooqa.ru"),
              ),
            ),
            new ListTile(title: new Text("Профиль"), onTap: () {}),
            new ListTile(title: new Text("Сообщения"), onTap: () {}),
            new ListTile(title: new Text("Лента"), onTap: () {}),
            new ListTile(title: new Text("Настройки"), onTap: () {})
          ],
        ),
      ),
    ));
  }
}
