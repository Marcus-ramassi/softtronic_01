import 'package:flutter/material.dart';

class TelaInserirCliente extends StatefulWidget {
  @override
  _ExemploFormState createState() => _ExemploFormState();
}

class _ExemploFormState extends State<TelaInserirCliente> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String nome, email, celular, cnpj, razaoSocial;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Adicionar Novo Cliente'),
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
                  nome = "";
                  razaoSocial = "";
                  celular = "";
                  email = "";
                  cnpj = "";

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
              child: _formUI(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _formUI() {
    return Column(
      children: [
        Icon(Icons.people,
                  size: 120, color: Theme.of(context).primaryColor),
              
        Container(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Nome Cliente',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            maxLength: 40,
            validator: _validarNome,
            onSaved: (String val) {
              nome = val;
            },
          ),
        ),
        Container(
          child: TextFormField(
            decoration: new InputDecoration(
              hintText: 'Razão Social',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            maxLength: 240,
            // validator: _validarNome,
            onSaved: (String val) {
              razaoSocial = val;
            },
          ),
        ),
        Container(
          child: TextFormField(
              decoration: new InputDecoration(
                hintText: 'Telefone',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.phone,
              maxLength: 10,
              validator: _validarCelular,
              onSaved: (String val) {
                celular = val;
              }),
        ),
        Container(
          child: TextFormField(
              decoration: new InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              maxLength: 40,
              validator: _validarEmail,
              onSaved: (String val) {
                email = val;
              }),
        ),
        Container(
          child: TextFormField(
              decoration: new InputDecoration(
                hintText: 'CNPJ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              //keyboardType: TextInputType.phone,
              maxLength: 40,
              validator: _validarcnpj,
              onSaved: (String val) {
                cnpj = val;
              }),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            child: Text('Salvar', style: TextStyle(fontSize: 18)),
            onPressed: () {
              if (_key.currentState.validate()) {
                
                
                
                //O método setState é utilizado todas as vezes que é
                //necessário alterar o estado do App
                setState(() {
                  caixaDialogo('O cadastro foi realizado com sucesso');
                });
              }
              //print('botão pressionado!');
            },
          ),
        ),
      ],
    );
  }

  caixaDialogo(msg) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Cadastro de cliente'),
            content: Text(msg),
            actions: [
              TextButton(
                child: Text('fechar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  String _validarNome(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o nome";
    } else if (!regExp.hasMatch(value)) {
      return "O nome deve conter caracteres de a-z ou A-Z";
    }
    return null;
  }

  String _validarCelular(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o celular";
    } else if (value.length != 10) {
      return "O celular deve ter 10 dígitos";
    } else if (!regExp.hasMatch(value)) {
      return "O número do celular so deve conter dígitos";
    }
    return null;
  }

  String _validarEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Informe o Email";
    } else if (!regExp.hasMatch(value)) {
      return "Email inválido";
    } else {
      return null;
    }
  }

  String _validarcnpj(String value) {
    return null;
  }

  _sendForm() {
    if (_key.currentState.validate()) {
      // Sem erros na validação
      _key.currentState.save();
      print("Nome $nome");
      print("Ceclular $celular");
      print("Email $email");
    } else {
      // erro de validação
      setState(() {
        _validate = true;
      });
    }
  }
}
