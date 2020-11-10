import 'package:app/login.dart';
import 'package:app/widgets.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Orientation deviceOrientation = MediaQuery.of(context).orientation;
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
            new ListTile(title: new Text("Настройки"), onTap: () {}),
            new ListTile(
              title: new Text("Выйти"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            )
          ],
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (context, constraints) => Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Поставьте',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    child: OrientationBuilder(
                      builder: (context, orientation) => Center(
                        // child: Text(
                        //   'View 1\n\n' +
                        //       '[MediaQuery orientation]:\n$deviceOrientation\n\n' +
                        //       '[OrientationBuilder]:\n$orientation',
                        //   style: TextStyle(color: Colors.white, fontSize: 18),
                        // ),
                        child: Text('зачет',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ),
                    ),
                  ),
                ),
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
