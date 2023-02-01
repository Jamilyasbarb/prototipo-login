import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.blue[800],),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  children: [
                    Form(
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
                        margin: EdgeInsets.all(10),
                        child: SingleChildScrollView(
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
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue.shade800),
                                    )
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'CPF: ___.___.___-__',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue.shade800),
                                    )
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue.shade800),
                                    )
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'CPF: ___.___.___-__',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue.shade800),
                                    )
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue.shade800),
                                    )
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'CPF: ___.___.___-__',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue.shade800),
                                    )
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue.shade800),
                                    )
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'CPF: ___.___.___-__',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue.shade800),
                                    )
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue.shade800),
                                    )
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'CPF: ___.___.___-__',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue.shade800),
                                    )
                                  ),
                                ),
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
                        ),
                      )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}