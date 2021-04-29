import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';


class TelaAdicionarModelo extends StatefulWidget {
  
  @override
  _ExemploFormState createState() => _ExemploFormState();
}

class _ExemploFormState extends State<TelaAdicionarModelo>
    with SingleTickerProviderStateMixin {
  int _index = 0;
  String marca, modelo, potencia, corrente,tensao, codigo_etiqueta;
   int _radioValue;
    final _formKey = GlobalKey<FormBuilderState>();

  @override
  void initState() {
    super.initState();
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adicionar Modelo de Equipamento'),
          backgroundColor: Colors.grey[800],
        ),
        body: Center(
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
                  title: Text("Tipo de Equipamento"),
                  content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                           Row(
                                children: [
                                  new Radio(
                                    value: 1,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  Text('Inversor de Frequência'),
                                ],
                              ),
                              Row(
                                children: [
                                  new Radio(
                                    value: 2,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  Text('SoftStarter'),
                                ],
                              ),
                              Row(
                                children: [
                                  new Radio(
                                    value: 3,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  Text('Conversor CA/CC'),
                                ],
                              ),
                              Row(
                                children: [
                                  new Radio(
                                    value: 4,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  Text('Conversor CA/CA'),
                                ],
                              ),
                              Row(
                                children: [
                                  new Radio(
                                    value: 5,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  Text('Dinamic Break'),
                                ],
                              ),
                              Row(
                                children: [
                                  new Radio(
                                    value: 6,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,
                                  ),
                                  Text('No-Break'),
                                ],
                              ),
                          
                        ],
                      ),
                    ),
                ),
                Step(
                  title: Text("Marca e Modelo"),
                  content: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Marca',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                           
                              onSaved: (String val) {
                                marca = val;
                              },
                            ),
                          ),
                            SizedBox(
                          height: 5,
                        ),
                          Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Modelo',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                         
                              onSaved: (String val) {
                                modelo = val;
                              },
                            ),
                          ),
                          SizedBox(
                          height: 5,
                          width: 5,
                        ),
                           Container(
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Codigo da Etiqueta',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
          
                              onSaved: (String val) {
                                codigo_etiqueta = val;
                              },
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                ),
                Step(
                  title: Text("Tensão, Corrente e Potência"),
                  content: Padding(
                      padding: const EdgeInsets.all(8.0), 
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 150,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Tensão',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                      
                                  onSaved: (String val) {
                                    tensao = val;
                                  },
                                ),
                              ),
                               SizedBox(
                               height: 5,
                          width: 5,
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                width: 80,
                                height: 50,
                                child: Text('Volts',
                               )
                              ),
                            ],
                          ),
                          SizedBox(
                          height: 5,
                          width: 5,
                        ),
                          Row(
                            children: [
                              Container(
                                width: 150,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Corrente',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                               
                                  onSaved: (String val) {
                                    corrente = val;
                                  },
                                ),
                              ),
                               SizedBox(
                               height: 5,
                          width: 5,
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                width: 80,
                                height: 50,
                                child: Text('Amperes',
                               )
                              ),
                            ],
                          ),
                          SizedBox(
                          height: 5,
                          width: 5,
                        ),
                           Row(
                             children: [
                               Container(
                                 width: 150,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Potencia',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                 
                                  onSaved: (String val) {
                                    potencia = val;
                                  },
                                ),
                          ),
                           SizedBox(
                                height: 5,
                          width: 5,
                              ),
                          Container(
                                alignment: Alignment.bottomLeft,
                                width: 80,
                                height: 50,
                                child:DropPotencia()
                              ),
                             ],
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
                  decoration: const InputDecoration(labelText: 'Foto Equipamento'),
                  maxImages: 3,
                ),
             
              ],
            ),
          ),



                      )),
                ),
                Step(
                  title: Text("Manuais"),
                  content: Padding(
                      padding: const EdgeInsets.all(8.0), child: Container()),
                )
              ]),
        ));
  }
}

class DropPotencia extends StatefulWidget {
  const DropPotencia({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<DropPotencia> {
  String dropdownValue = 'CV';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>[
        'CV',
        'KW',
        'HP'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
