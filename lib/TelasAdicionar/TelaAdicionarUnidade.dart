import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';


class TelaAdicionarUnidade extends StatefulWidget {
  
  @override
  _ExemploFormState createState() => _ExemploFormState();
}

class _ExemploFormState extends State<TelaAdicionarUnidade>
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
          title: Text('Adicionar Nova Unidade por Cliente'),
          backgroundColor: Colors.grey[800],
        ),
        body: Column(
          children: [
 Row(
            children: [
              Container(
                height: 50,
                width: 100,
                child: Image.asset('lib/imagens/engrenagens.png'),
              ),
              SizedBox(width: 100),
              Expanded(
                child: Container(
                  child: Text(
                    'Nome do cliente selecionado',
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
                          labelText: 'Nome da Unidade',
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
                          title: Text("Razão Social"),
                          content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Razão Social da Unidade',
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
                          labelText: 'Nome do responsavel pela Unidade',
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
                          title: Text("Contato"),
                          content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Telefone',
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
                          labelText: 'E-Mail',
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
