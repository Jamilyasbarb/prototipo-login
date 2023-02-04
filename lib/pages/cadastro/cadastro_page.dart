import 'package:flutter/material.dart';
import 'package:prototipo_login/pages/cadastro/dados_pessoais.dart';
import 'package:prototipo_login/pages/cadastro/dados_veiculo.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool proximo = false;
  final _formPessoal = GlobalKey<FormState>();
  final _formVeiculo = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.yellow[900],),
        title: Text('Cadastre-se'),
        actions: [
          Image.asset('assets/images/logo.png')
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            // Container(color: Colors.blue[800],),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  proximo ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dados do Veiculo', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,textDirection: TextDirection.rtl,),
                      Text('Por favor, insira seus dados para continuar', style: Theme.of(context).textTheme.bodyMedium,),
                    ],
                  ) : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dados pessoais', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,textDirection: TextDirection.rtl,),
                      Text('Por favor, insira seus dados para continuar', style: Theme.of(context).textTheme.bodyMedium,),
                    ],
                  ),
                  proximo ?  Expanded(
                    flex: 6,
                    child: Form(
                      key: _formVeiculo,
                      child: DadosVeiculoComponent()
                    ),
                  ):Expanded(
                    flex: 6,
                    child: Form(
                      key: _formPessoal,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DadosPessoaisComponent(),
                        ],
                      )
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: (){
                            setState(() {
                              proximo = false;
                            });
                          },
                          child: Text('Voltar', style: TextStyle(color: Colors.yellow[900]),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue.shade300,
                                Colors.blue,
                                Colors.blue.shade800,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight
                            ),
                          ),
                          
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: (){
                                  if(_formPessoal.currentState!.validate()){
                                    setState(() {
                                     proximo = true;
                                    });
                                    
                                  }else{
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Algo deu errado: Verifique os campos acima'))
                                    );
                                  } 
                                },
                                child: proximo ? Text('Cadastrar', style: TextStyle(color: Colors.white),):Text('Próximo', style: TextStyle(color: Colors.white),),
                              ),
                              Icon(proximo ?  Icons.check :  Icons.arrow_forward, color: Colors.white,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}