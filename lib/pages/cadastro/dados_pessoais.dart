import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DadosPessoaisComponent extends StatelessWidget {
  const DadosPessoaisComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          // Text('Login', style: Theme.of(context).textTheme.titleLarge,),
          TextFormField(
            showCursor: true,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: 'Nome Completo',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue.shade800, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.orange.shade800)
              )
            ),
            validator: (value){
              if(value == null || value == ''){
                return 'Campo obrigatório';
              }
            },
          ),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: 'Email',
              hintText: '@email.com',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue.shade800, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.orange.shade800)
              )
            ),
            validator: (value){
              if(value == null || value == ''){
                return 'Campo obrigatório';
              }
            },
          ),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.document_scanner_outlined),
              labelText: 'CPF',
              hintText: '___.___.___-__',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue.shade800, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.orange.shade800)
              )
            ),
            validator: (value){
              if(value == null || value == ''){
                return 'Campo obrigatório';
              }
            },
          ),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.location_on_outlined),
              labelText: 'Cidade',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue.shade800, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.orange.shade800)
              ),
            ),
            validator: (value){
              if(value == null || value == ''){
                return 'Campo obrigatório';
              }
            },
          ),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.location_city_outlined),
              labelText: 'Uf',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.blue.shade800, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.orange.shade800)
              ),
            ),
            validator: (value){
              if(value == null || value == ''){
                return 'Campo obrigatório';
              }
            },
          ),
        ],
      ),
    );
  }
}