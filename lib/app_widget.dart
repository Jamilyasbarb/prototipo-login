import 'package:flutter/material.dart';
import 'package:prototipo_login/pages/cadastro/cadastro_page.dart';
import 'package:prototipo_login/pages/login/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        fontFamily: 'Sunflower'
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => LoginPage(),
        'cadastro':(context) => CadastroPage()
      },
    );
  }
}