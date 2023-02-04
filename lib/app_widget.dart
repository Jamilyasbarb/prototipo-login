import 'package:flutter/material.dart';
import 'package:prototipo_login/pages/cadastro/cadastro_page.dart';
import 'package:prototipo_login/pages/login/login_page.dart';
import 'package:prototipo_login/pages/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 40,
            color: Color.fromARGB(255, 57, 57, 57),
            fontWeight: FontWeight.bold
          ),
          
          bodyMedium: TextStyle(
            fontSize: 15,
            color: Colors.black54,
            fontWeight: FontWeight.w400
          ),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.yellow[900],
          titleTextStyle: TextStyle(
            fontSize: 20
          ),
        ),
        fontFamily: 'Sunflower'
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => SplashPage(),
        'login':(context) => LoginPage(),
        'cadastro':(context) => CadastroPage()
      },
    );
  }
}