import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';

class TelaAdicionarEquipamento extends StatefulWidget {
  @override
  _ExemploFormState createState() => _ExemploFormState();
}

class DropMarca extends StatefulWidget {
  const DropMarca({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<DropMarca> {
  String dropdownValue = 'WEG';

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
        'WEG',
        'Siemens',
        'Rockwell',
        'Santerno',
        'Danfoss',
        'Scheneider',
        'Telemecanique',
        'ABB',
        'SEW',
        'Delta'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropModelo extends StatefulWidget {
  const DropModelo({Key key}) : super(key: key);
  @override
  _MyStatefulWidgetState1 createState() => _MyStatefulWidgetState1();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState1 extends State<DropModelo> {
  String dropdownValue = 'CFW08';

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
        'CFW08',
        'CFW09',
        'CFW10',
        'CFW11',
        'CFW100',
        'CFW500',
        'CFW700'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropCodigo extends StatefulWidget {
  const DropCodigo({Key key}) : super(key: key);
  @override
  _MyStatefulWidgetState2 createState() => _MyStatefulWidgetState2();
}

class _MyStatefulWidgetState2 extends State<DropCodigo> {
  String dropdownValue = 'CFW080040S2024POSIZ';

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
        'CFW080040S2024POSIZ',
        'CFW080120S2024POSIZ',
        'CFW080240S2024POSIZ',
        'CFW080320S2024POSIZ',
        'CFW080050S2024POSIZ',
        'CFW080060S2024POSIZ',
        'CFW080080S2024POSIZ'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class _ExemploFormState extends State<TelaAdicionarEquipamento>
    with SingleTickerProviderStateMixin {
  int _index = 0;
  String marca, modelo, potencia, corrente, tensao, codigo_etiqueta;
  String aplicacao, tag, serial, patrimonio;
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
          title: Text('Adicionar Equipamento ao CCM'),
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
                          child: SingleChildScrollView(child: DropMarca()),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: SingleChildScrollView(child: DropModelo()),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: SingleChildScrollView(child: DropCodigo()),
                        )
                      ],
                    ),
                  ),
                ),
                Step(
                  title: Text("Identificação"),
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Aplicação',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onSaved: (String val) {
                              aplicacao = val;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'TAG',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onSaved: (String val) {
                              tag = val;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Serial',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onSaved: (String val) {
                              serial = val;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Patrimonio',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onSaved: (String val) {
                              patrimonio = val;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                 Step(
                  title: Text("Opcionais"),
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Cartões de rede',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onSaved: (String val) {
                              aplicacao = val;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Cartões opcionais',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onSaved: (String val) {
                              tag = val;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'IHM Grafica',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onSaved: (String val) {
                              serial = val;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'IHM Remota',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onSaved: (String val) {
                              patrimonio = val;
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
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: FormBuilder(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              FormBuilderImagePicker(
                                name: 'photos',
                                decoration: const InputDecoration(
                                    labelText: 'Foto Equipamento'),
                                maxImages: 4,
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
              ]),
        ));
  }
}
