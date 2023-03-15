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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(53.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.email, color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 15),
                TextField(
                  onChanged: (text) {
                    senha = text;
                  },
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    labelStyle: TextStyle(color: Colors.white),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (email == 'user@example.com' && senha == '123') {
                      print("Logado com sucesso!");
                    }
                  },
                  child: Text("Entrar"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 184, 135, 11)),
                    foregroundColor: MaterialStateProperty.all(
                        Color.fromARGB(249, 255, 255, 255)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
