import 'package:app/widgets.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/recentChats.dart';

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
      drawer: profile(context),
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
                  flex: 1,
                  child: OrientationBuilder(
                    builder: (context, orientation) => Container(
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Диалог и текущим пользователем:',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
                // Вот тут должны быть сообщения с другим пользователем
                Expanded(
                  flex: 10,
                  child: OrientationBuilder(
                    builder: (context, orientation) => Container(
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'А как чат тут сделать, который в chatScreens',
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
