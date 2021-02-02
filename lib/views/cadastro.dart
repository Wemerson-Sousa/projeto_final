// import 'package:app/views/login_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  String email = "";
  String password1 = "";
  String password2 = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 500,
                  height: 300,
                  child: Image.asset("lib/image/logo.jpg"),
                ),
                Container(
                  height: 30,
                ),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Insira seu email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (pass) {
                    password1 = pass;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Insira sua senha.",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (pass2) {
                    password2 = pass2;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Insira sua senha novamente.",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // Container(
                //   child: GestureDetector(
                //     child: Text('Já possui cadastro?'),
                //     onTap: () {
                //       Navigator.of(context).push(
                //         MaterialPageRoute(builder: (context) => LoginPage()),
                //       );
                //     },
                //   ),
                // ),
                SizedBox(height: 10),
                RaisedButton(
                  onPressed: () {
                    if (email == "teste.user@gmail.com" && password1 == password2) {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    } else {
                      print("Erro no cadastro.");
                    }
                  },
                  child: Text("Cadastrar"),
                )
              ],
            ),
            // ],
          ),
        ),
      ),
    );
  }
}
