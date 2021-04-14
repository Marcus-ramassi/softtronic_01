import 'package:flutter/material.dart';
import 'package:softtronic_01/TelaPrincipal.dart';

class TelaLogin extends StatefulWidget {
  @override
  _ExemploFormState createState() => _ExemploFormState();
}

class _ExemploFormState extends State<TelaLogin> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String nomeUsuario, senha;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('LOGIN'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.indigo[900],
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  _key.currentState.reset();
                  nomeUsuario = "";
                  senha = "";

                  FocusScope.of(context).unfocus();
                });
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(15.0),
            child: Form(
              key: _key,
              autovalidate: _validate,
              child: _formulrioLogin(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _formulrioLogin() {
    return Column(
      children: [
        Icon(Icons.people, size: 120, color: Theme.of(context).primaryColor),
        Container(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Nome Usuario',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            maxLength: 40,
            validator: _validarNome,
            onSaved: (String val) {
              nomeUsuario = val;
            },
          ),
        ),
        Container(
          child: TextFormField(
            decoration: new InputDecoration(
              hintText: 'Digite sua senha',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            maxLength: 240,
            validator: _validarSenha,
            onSaved: (String val) {
              senha = val;
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            child: Text('Entrar', style: TextStyle(fontSize: 18)),
            onPressed: () {
              if (_key.currentState.validate()) {
                //O método setState é utilizado todas as vezes que é
                //necessário alterar o estado do App

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaPrincipal()),
                );

                setState(() {
                  //caixaDialogo('O cadastro foi realizado com sucesso');
                });
              }
              //print('botão pressionado!');
            },
          ),
        ),
      ],
    );
  }

  String _validarNome(String value) {
    if (value.length == 0) {
      return "Informe o nome";
    } else if (value != "usuario") {
      return "O nome deve ser usuario";
    }
    return null;
  }

  String _validarSenha(String value) {
    if (value.length == 0) {
      return "Informe a senha";
    } else if (value != "1234") {
      return "O senha deve ser 1234";
    }
    return null;
  }
}
