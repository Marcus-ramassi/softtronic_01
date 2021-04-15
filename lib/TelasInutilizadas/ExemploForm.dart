import 'package:flutter/material.dart';

class ExemploForm extends StatefulWidget {
  @override
  _ExemploFormState createState() => _ExemploFormState();
}

class _ExemploFormState extends State<ExemploForm> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String nome, email, celular, cnpj, razaoSocial;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Formulário com Validação'),
         leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context)
                  ),
        
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
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
    return  Column(
      children: [
        
               Container(
               child: TextFormField(
                decoration: new InputDecoration(hintText: 'Nome Cliente'),
                maxLength: 40,
                validator: _validarNome,
                onSaved: (String val) {
                  nome = val;
                },
              ),
             ),
             
              Container(
           child: TextFormField(
            decoration: new InputDecoration(hintText: 'Razão Social'),
            maxLength: 240,
           // validator: _validarNome,
            onSaved: (String val) {
              razaoSocial = val;
            },
            ),
         ),
        

         
         
        
        
         Container(
           child: TextFormField(
              decoration: new InputDecoration(hintText: 'Telefone'),
              keyboardType: TextInputType.phone,
              maxLength: 10,
              validator: _validarCelular,
              onSaved: (String val) {
                celular = val;
              }),
         ),
        
         Container(
           child: TextFormField(
              decoration: new InputDecoration(hintText: 'Email'),
              keyboardType: TextInputType.emailAddress,
              maxLength: 40,
              validator: _validarEmail,
              onSaved: (String val) {
                email = val;
              }),
         ),
        
  
            Container(
              child: TextFormField(
              decoration: new InputDecoration(hintText: 'CNPJ'),
              //keyboardType: TextInputType.phone,
              maxLength: 40,
              validator: _validarcnpj,
              onSaved: (String val) {
                cnpj = val;
              }),
            ),
            
        new SizedBox(height: 15.0),
        new RaisedButton(
          onPressed: _sendForm,
          child: new Text('Enviar'),
        )
      ],
    );
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
