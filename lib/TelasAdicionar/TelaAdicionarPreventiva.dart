import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';

class TelaAdicionarPreventiva extends StatefulWidget {
  @override
  _ExemploFormState createState() => _ExemploFormState();
}

class _ExemploFormState extends State<TelaAdicionarPreventiva>
    with SingleTickerProviderStateMixin {
  int _index = 0;
  String nome, razaoSocial, responsavel, telefone, email;
  double _fletras = 14;
  int _radioValue;

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
          title: Text('Adicionar Formulário de Preventiva'),
          backgroundColor: Colors.grey[800],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 80,
                    child: Image.asset(
                      'lib/imagens/preventiva.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Codigo do Equipamento Selecionado\nModelo\nAplicação',
                      style: TextStyle(
                          fontSize: 20,
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
                        ///////////////////////////////////////////////CIRCUITO RETIFICADOR
                        title: Text("Circuito Retificador"),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(children: [
                              Container(
                                  color: Colors.indigo[800],
                                  width: MediaQuery.of(context).size.width,
                                  height: 16,
                                  child: Text(
                                    'Condução Diodos',
                                    style: TextStyle(color: Colors.white),
                                  )),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('L1 => DC+',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'VDC',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Mohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('L2 => DC+',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'VDC',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Mohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('L3 => DC+',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'VDC',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Mohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                  color: Colors.indigo[700],
                                  width: MediaQuery.of(context).size.width,
                                  height: 16,
                                  child: Text(
                                    'Resistencia dos Gates(Apenas Tiristores)',
                                    style: TextStyle(color: Colors.white),
                                  )),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('DC- => L1',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('DC- => L2',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('DC- => L3',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                      Step(
                        ////////////////////////////////////////////PONTE IGBT
                        title: Text("Ponte Inversora / Modulo IGBT"),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(children: [
                              Container(
                                  color: Colors.indigo[600],
                                  width: MediaQuery.of(context).size.width,
                                  height: 16,
                                  child: Text(
                                    'Condução Diodos Antiparalelo',
                                    style: TextStyle(color: Colors.white),
                                  )),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('U => DC+',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'VDC',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Kohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('V => DC+',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'VDC',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Kohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('W => DC+',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'VDC',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Kohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                  color: Colors.indigo[500],
                                  width: MediaQuery.of(context).size.width,
                                  height: 16,
                                  child: Text(
                                    'Capacitância dos Gates',
                                    style: TextStyle(color: Colors.white),
                                  )),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('U => Uh',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'nF',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('V => Vh',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'nF',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('W => Wh',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'nF',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('DC- => Ui',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'nF',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('DC- => Vi',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'nF',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                                width: 5,
                              ),
                              Card(
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          child: Text('DC- => Wi',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.indigo[800],
                                              ))),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'nF',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: 100,
                                            height: 35,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelStyle: TextStyle(
                                                  fontSize: _fletras,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                ),
                                                labelText: 'Ohms',
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.auto,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                              // maxLength: 10,
                                              //validator: _validarNome,
                                              onSaved: (String val) {
                                                nome = val;
                                              },
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                      Step(
                        /////////////////////////////////////PLACA RETIFICADORA
                        title: Text("Placa Retificadora"),
                        content: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                    color: Colors.indigo[500],
                                    width: MediaQuery.of(context).size.width,
                                    height: 16,
                                    child: Text(
                                      'Existente',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Card(
                                  elevation: 15,
                                  child: Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 1,
                                                groupValue: _radioValue,
                                                onChanged:
                                                    _handleRadioValueChange,
                                              ),
                                              Text('SIM'),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 2,
                                                groupValue: _radioValue,
                                                onChanged:
                                                    _handleRadioValueChange,
                                              ),
                                              Text('NÂO'),
                                            ],
                                          ),
                                        ]),
                                  ),
                                ),
                                Container(
                                    color: Colors.indigo[400],
                                    width: MediaQuery.of(context).size.width,
                                    height: 16,
                                    child: Text(
                                      'Pré Carga',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Card(
                                  elevation: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Text('L1',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.indigo[800],
                                                ))),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width: 150,
                                              height: 35,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelStyle: TextStyle(
                                                    fontSize: _fletras,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey[600],
                                                  ),
                                                  labelText: 'Diodos Vdc',
                                                  floatingLabelBehavior:
                                                      FloatingLabelBehavior
                                                          .auto,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                // maxLength: 10,
                                                //validator: _validarNome,
                                                onSaved: (String val) {
                                                  nome = val;
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              width: 150,
                                              height: 35,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelStyle: TextStyle(
                                                    fontSize: _fletras,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey[600],
                                                  ),
                                                  labelText: 'Resistores Ohms',
                                                  floatingLabelBehavior:
                                                      FloatingLabelBehavior
                                                          .auto,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                // maxLength: 10,
                                                //validator: _validarNome,
                                                onSaved: (String val) {
                                                  nome = val;
                                                },
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Text('L2',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.indigo[800],
                                                ))),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width: 150,
                                              height: 35,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelStyle: TextStyle(
                                                    fontSize: _fletras,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey[600],
                                                  ),
                                                  labelText: 'Diodos Vdc',
                                                  floatingLabelBehavior:
                                                      FloatingLabelBehavior
                                                          .auto,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                // maxLength: 10,
                                                //validator: _validarNome,
                                                onSaved: (String val) {
                                                  nome = val;
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              width: 150,
                                              height: 35,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelStyle: TextStyle(
                                                    fontSize: _fletras,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey[600],
                                                  ),
                                                  labelText: 'Resistores Ohms',
                                                  floatingLabelBehavior:
                                                      FloatingLabelBehavior
                                                          .auto,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                // maxLength: 10,
                                                //validator: _validarNome,
                                                onSaved: (String val) {
                                                  nome = val;
                                                },
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Text('L3',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.indigo[800],
                                                ))),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              width: 150,
                                              height: 35,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelStyle: TextStyle(
                                                    fontSize: _fletras,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey[600],
                                                  ),
                                                  labelText: 'Diodos Vdc',
                                                  floatingLabelBehavior:
                                                      FloatingLabelBehavior
                                                          .auto,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                // maxLength: 10,
                                                //validator: _validarNome,
                                                onSaved: (String val) {
                                                  nome = val;
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              width: 150,
                                              height: 35,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelStyle: TextStyle(
                                                    fontSize: _fletras,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey[600],
                                                  ),
                                                  labelText: 'Resistores Ohms',
                                                  floatingLabelBehavior:
                                                      FloatingLabelBehavior
                                                          .auto,
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                // maxLength: 10,
                                                //validator: _validarNome,
                                                onSaved: (String val) {
                                                  nome = val;
                                                },
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                    color: Colors.indigo[400],
                                    width: MediaQuery.of(context).size.width,
                                    height: 16,
                                    child: Text(
                                      'Situação',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                Card(
                                  elevation: 15,
                                  child: Container(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 1,
                                                groupValue: _radioValue,
                                                onChanged:
                                                    _handleRadioValueChange,
                                              ),
                                              Text('Aprovado'),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              new Radio(
                                                value: 2,
                                                groupValue: _radioValue,
                                                onChanged:
                                                    _handleRadioValueChange,
                                              ),
                                              Text('Reprovado'),
                                            ],
                                          ),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
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
                                    labelText:
                                        'Nome do responsavel pela Unidade',
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
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: FormBuilder(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    FormBuilderImagePicker(
                                      name: 'photos',
                                      decoration: const InputDecoration(
                                          labelText: 'Foto Unidade'),
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
