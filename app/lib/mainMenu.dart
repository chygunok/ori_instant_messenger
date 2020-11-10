import 'package:app/widgets.dart';
import 'package:flutter/material.dart';
import 'package:app/recentChats.dart';

// Ограничения для виджетов объявляются в родителях.
// Размеры (желаемые) задаются в самом виджете.
// Позиция виджета на экране устанавливается родителем

class MainMenu extends StatefulWidget {
  @override
  _MainMenu createState() => _MainMenu();
}

class _MainMenu extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    // Orientation deviceOrientation = MediaQuery.of(context).orientation;
    // Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MainAppBar(context),
      // Hamburger
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
      body: Row(
        // Разметка под списов чатов и сами статичные чаты RecentChats
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: Colors.black,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            RecentChats(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                // Тут хезе что будет, скорее всего имя человека с которым ведется диалог
                Expanded(
                  flex: 2,
                  child: OrientationBuilder(
                    builder: (context, orientation) => Container(
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'пожалуйста',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
                // Вот тут должны быть сообщения с другим пользователем
                Expanded(
                  flex: 3,
                  child: OrientationBuilder(
                    builder: (context, orientation) => Container(
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'пожалуйста',
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
