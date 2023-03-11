

  import 'package:flutter/material.dart';

  class LoginPage extends StatefulWidget {
    LoginPage({super.key});

    @override
    State<LoginPage> createState() => _LoginPageState();
  }

  class _LoginPageState extends State<LoginPage> {

  String email = '';
  String senha = '';


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(53.0),
              child: Column( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 TextField(
                  onChanged: (text){
                    email = text; 
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder()
                  ),
                ),
        
              SizedBox(height: 10),
        
                TextField(
                  onChanged: (text){
                    senha = text; 
                  },
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder()
                  ),
                ),
        
                SizedBox( height: 15),
        
                ElevatedButton(onPressed: () {
                  if (email == 'bernardo@email.com.br' && senha == '123') {
                    print("Logado com sucesso!"); 
                  }
                },
                child: Text("Entrar"))
              ],
              
              ),
            ),
          ),
        ),
      );
    }
  } 
