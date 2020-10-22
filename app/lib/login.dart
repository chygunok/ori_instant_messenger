import 'package:app/mainMenu.dart';
import 'package:flutter/material.dart';
import 'package:app/theme.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var login = TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Логин',
          hoverColor: Colors.white),
      controller: controller,
    );

    return Scaffold(
      body: Container(
        color: AppColors.mainBlack[800],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ORI Мессенджер",
                style: TextStyle(color: AppColors.mainBlack[200], fontSize: 48),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(width: 500, child: login),
              ),
              Container(
                width: 500,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Пароль',
                      hoverColor: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: MaterialButton(
                  child: Text(
                    "Войти",
                    style: TextStyle(
                      color: AppColors.mainBlack[800],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => MainMenu(),
                      ),
                    );
                  },
                  minWidth: 500,
                  height: 50,
                  color: AppColors.mainBlack[200],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
