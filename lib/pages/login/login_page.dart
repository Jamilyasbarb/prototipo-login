import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // Container(color: Colors.blue[800]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Flexible(child: Image.asset('assets/images/logo.png', width: 100,)),
                      Flexible(child: Image.asset('assets/images/logo.png', width: 150,)),
                      Text('SEIS', style: Theme.of(context).textTheme.titleLarge,),
                      Text('Sistema de Encomenda Internacionl de Serviços', style: Theme.of(context).textTheme.bodyMedium,)
                    ],
                ),
                  )),
                Expanded(
                  flex: 1,
                  child: Form(
                    key: _keyForm,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: 
                      SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person_outline_outlined),
                                labelText: 'CPF',
                                hintText: '___.___.___-__',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade800,
                                    width: 1.5
                                  ),
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.yellow.shade900,
                                  ),
                                  borderRadius: BorderRadius.circular(30)
                                )
                              ),
                               validator: (value){
                                if(value == null || value == ''){
                                  return 'Campo obrigatório';
                                }
                              },
                            ),
                            Container(height: 10,),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_outline),
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.blue.shade800,
                                    width: 1.5
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.yellow.shade900,
                                  ),
                                  borderRadius: BorderRadius.circular(30)
                                )
                              ),
                              validator: (value){
                                if(value == null || value == ''){
                                  return 'Campo obrigatório';
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                      margin: EdgeInsets.only(right:20),
                        width: 150,
                        height: 60,
                        decoration: BoxDecoration(
                        color: Colors.blue[800],
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue.shade300,
                            Colors.blue,
                            Colors.blue.shade800,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight
                        ),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: (){
                                if(_keyForm.currentState!.validate()){
                                }else{
                                }
                              },
                              child: Text('Entrar', style: TextStyle(color: Colors.white), ),
                            ),
                            Icon(Icons.arrow_forward, color: Colors.white,)
                          ],
                        ),
                      ),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).pushNamed('cadastro');
                        }, 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Não é cadastrado? ', style: Theme.of(context).textTheme.bodyMedium),
                            Text('Cadastre-se', style: TextStyle(color: Colors.blue[800]),),
                          ],
                        )
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