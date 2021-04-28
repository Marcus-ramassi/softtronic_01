import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';


class TelaAdicionarCCM extends StatefulWidget {
  
  @override
  _ExemploFormState createState() => _ExemploFormState();
}

class _ExemploFormState extends State<TelaAdicionarCCM>
    with SingleTickerProviderStateMixin {
  int _index = 0;
  String nome, razaoSocial, responsavel, telefone, email;
   
  @override
  void initState() {
    super.initState();
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adicionar Nova localidade(CCM)'),
          backgroundColor: Colors.grey[800],
        ),
        body: Column(
          children: [
 Row(
            children: [
              Container(
                height: 50,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('lib/imagens/engrenagens.png'),
                ),
              ),
              SizedBox(width: 100),
              Expanded(
                child: Container(
                  child: Text(
                    'Nome da Unidade selecionada',
                    style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),

            Expanded(
                          child: Center(
                  child: Stepper(
                      currentStep: _index,
                      onStepCancel: () {
                        if (_index <= 0) {
                          return;
                        }
                        setState(() {
                          _index--;
                        });
                      },
                      onStepContinue: () {
                        if (_index >= 4) {
                          return;
                        }
                        setState(() {
                          _index++;
                        });
                      },
                      onStepTapped: (index) {
                        setState(() {
                          _index = index;
                        });
                      },
                      steps: [
                        Step(
                          title: Text("Nome"),
                          content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Descrição CCM',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                     
                        onSaved: (String val) {
                          nome = val;
                        },
                      ),
                    ),
                  ]
                ),
              ),
                        ),
                        Step(
                          title: Text("Codigo"),
                          content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Codigo da localidade',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                     
                        onSaved: (String val) {
                          razaoSocial = val;
                        },
                      ),
                    ),                          
                  ],
                ),
              ),
                        ),
                         Step(
                          title: Text("Responsável"),
                          content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nome do responsavel pelo CCM',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                     
                        onSaved: (String val) {
                          razaoSocial = val;
                        },
                      ),
                    ),                          
                  ],
                ),
              ),
                        ),
                         Step(
                          title: Text("Condições de trabalho"),
                          content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Origem da alimentação',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                     
                        onSaved: (String val) {
                          razaoSocial = val;
                        },
                      ),
                    ),  
                    SizedBox(
                    height: 5,
                  ), 
                     Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Tensão de entrada',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                     
                        onSaved: (String val) {
                          email = val;
                        },
                      ),
                    ),
                     SizedBox(
                    height: 5,
                  ),   
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Observaçoes',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                     
                        onSaved: (String val) {
                          email = val;
                        },
                      ),
                    ),                     
                  ],
                ),
              ),
                        ),
                        Step(
                          title: Text("Imagens"),
                          content: Padding(
                padding: const EdgeInsets.all(8.0), child: Container(
                    child: FormBuilder(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FormBuilderImagePicker(
                          name: 'photos',
                          decoration: const InputDecoration(labelText: 'Foto Unidade'),
                          maxImages: 3,
                        ),
                     
                      ],
                    ),
                  ),
       )),
                        ),
                        
                      ]),
                ),
            ),
          ],
        ));
  }
}
