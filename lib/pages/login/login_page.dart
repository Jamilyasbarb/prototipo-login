import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(color: Colors.blue[800]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png', width: 150,),
                    Text('SEIS', style: Theme.of(context).textTheme.titleLarge,)
                  ],
                )),
                Expanded(
                  child: Form(
                    child: Container(
                       decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment(0.8, 1),
                          colors:[
                          Colors.white, 
                          Colors.blue.shade800
                          ], 
                          tileMode: TileMode.mirror,
                        ),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      margin: EdgeInsets.all(20),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: 
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Text('Login', style: Theme.of(context).textTheme.titleLarge,),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'CPF: ___.___.___-__',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue.shade800),
                                )
                              ),
                            ),
                            Container(height: 10,),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue.shade800),
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).pushReplacementNamed('cadastro');
                        }, 
                        child: Text('Cadastre-se', style: TextStyle(color: Colors.white),)
                      ),
                      Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                        color: Colors.orange[800],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextButton(
                          onPressed: (){},
                          child: Text('Entrar', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}