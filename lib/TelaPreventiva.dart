import 'package:flutter/material.dart';

class TelaInserirPreventiva extends StatefulWidget {
  @override
  _ExemploFormState createState() => _ExemploFormState();
}

class _ExemploFormState extends State<TelaInserirPreventiva>
    with SingleTickerProviderStateMixin {
  GlobalKey<FormState> _key = new GlobalKey();
  GlobalKey<FormState> _key1 = new GlobalKey();
  bool _validate = false;
  String nome, email, celular, cnpj, razaoSocial;
  TabController _controller;
  int _index = 0, _index1 = 0, _index2 = 0;
  double _fletras = 11;
  int _radioValue;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Formulario de Preventiva'),
        backgroundColor: Colors.indigo[800],
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            new Card(
              child: new ListTile(
                leading: Image.asset('lib/imagens/imagem equipamento.jpg'),
                title: new Text(
                  'Aplicação\nCódigo',
                  style: TextStyle(
                      fontSize: 18,
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: new Container(
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(color: Colors.transparent),
                child: new TabBar(
                  controller: _controller,
                  labelColor: Colors.indigo[900],
                  isScrollable: true,
                  indicatorColor: Colors.transparent,
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),
                  tabs: <Widget>[
                    new Tab(
                      icon: const Icon(Icons.data_usage),
                      text: 'Circuito Retificador',
                    ),
                    new Tab(
                      icon: const Icon(Icons.bar_chart),
                      text: 'Ponte Inversora\nModulo IGBT',
                    ),
                    new Tab(
                      icon: const Icon(Icons.directions_off),
                      text: 'Placa retificadora',
                    ),
                    new Tab(
                      icon: const Icon(Icons.attractions),
                      text: 'Ventilação',
                    ),
                    new Tab(
                      icon: const Icon(Icons.av_timer_outlined),
                      text: 'Frenagem',
                    ),
                    new Tab(
                      icon: const Icon(Icons.battery_alert),
                      text: 'Capacitores',
                    ),
                    new Tab(
                      icon: const Icon(Icons.my_location),
                      text: 'Ambiente',
                    ),
                    new Tab(
                      icon: const Icon(Icons.my_location),
                      text: 'Observação',
                    ),
                    new Tab(
                      icon: const Icon(Icons.my_location),
                      text: 'Situação',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: new TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    new Card(
                      ///////////////////////////////////Circuito retificador
                      child: SingleChildScrollView(
                        child: Form(
                          key: _key,
                          autovalidate: _validate,
                          child: _circuitoRetificador(),
                        ),
                      ),
                    ),
                    new Card(
                      ///////////////////////////////////Modulo IGBT
                      child: SingleChildScrollView(
                        child: Form(
                          key: _key1,
                          autovalidate: _validate,
                          child: _moduloIGBT(),
                        ),
                      ),
                    ),
                    new Card(
                        ///////////////////////////////////Placa retificadora
                         child: SingleChildScrollView(
                        child: Form(
                          key: _key,
                          autovalidate: _validate,
                          child: _placaRetificadora(),
                        ),
                      ),
                        ),
                    new Card(//////////////////////////////////tela manuais

                        ),
                    new Card(//////////////////////////////////////tela backup's

                        ),
                    new Card(//////////////////////////////////////tela backup's

                        ),
                    new Card(//////////////////////////////////////tela backup's

                        ),
                    new Card(//////////////////////////////////////tela backup's

                        ),
                    new Card(//////////////////////////////////////tela backup's

                        ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

/////////////////////////////////////////construção das telas////////////////////
  ///
///////////////////////////////////////CICUITO RETIFICADOR//////////////////////
  Widget _circuitoRetificador() {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
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
              if (_index >= 1) {
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
                title: Text("Condução (Diodos)"),
                content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'L1 -> DC+(VDC)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'L1 -> DC+(Mohms)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                                ),
                                Column(
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'L2 -> DC+(VDC)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                    height: 5,
                  ),
                  Container(
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'L2 -> DC+(Mohms)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                                ),
                                Column(
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'L3 -> DC+(VDC)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                    height: 5,
                  ),
                  Container(
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'L3 -> DC+(Mohms)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                                ),
                              ],
                            ),
                            SizedBox(
                              ////divisão linhas superior inferior
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'DC- -> L1(VDC)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'DC- -> L1(Mohms)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                                ),
                                Column(
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'DC- -> L2(VDC)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'DC- -> L2(Mohms)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                                ),
                                Column(
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'DC- -> L3(VDC)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                    width: 120,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                      fontSize: _fletras,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                        ),
                        labelText: 'DC- ->L3(Mohms)',
                        floatingLabelBehavior:
                        FloatingLabelBehavior.auto,
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
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
                                ),
                              ],
                            ),
                          ],
                        ),
                    ),
                  ),
              ),
              Step(
                title: Text("Resistencia Gates(Apenas Tiristores)"),
                content: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'DC+ -> L1(Ohms)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'DC+ -> L1(Ohms)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                          ),
                          Column(
                            children: [
                              Container(
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'DC+ -> L2(Ohms)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                                height: 5,
                              ),
                              Container(
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'DC+ -> L2(Ohms)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                          ),
                          Column(
                            children: [
                              Container(
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'DC+ -> L3(Ohms)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                                height: 5,
                              ),
                              Container(
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'DC+ -> L3(Ohms)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

///////////////////////////////////////Modulo IGBT///////////////////////////////////

  Widget _moduloIGBT() {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          child: Stepper(
            currentStep: _index1,
            onStepCancel: () {
              if (_index1 <= 0) {
                return;
              }
              setState(() {
                _index1--;
              });
            },
            onStepContinue: () {
              if (_index1 >= 1) {
                return;
              }
              setState(() {
                _index1++;
              });
            },
            onStepTapped: (index1) {
              setState(() {
                _index1 = index1;
              });
            },
            steps: [
              Step(
                title: Text("Condução (Diodos Antiparalelo)"),
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'U -> DC+(VDC)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'U -> DC+(Kohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'V -> DC+(VDC)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  height: 5,
                                ),
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'V -> DC+(Kohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'W -> DC+(VDC)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  height: 5,
                                ),
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'W -> DC+(Kohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                          ],
                        ),
                        SizedBox(
                          ////////////////////////////divisão linhas superior inferior
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> U(VDC)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> U(Kohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> V(VDC)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> V(Kohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> W(VDC)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> W(Kohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Step(
                title: Text("Capacitância Gates"),
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'U -> Uh(nF)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'U -> Uh(ohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'V -> Vh(nF)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  height: 5,
                                ),
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'V -> Vh(ohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'W -> Wh(nF)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  height: 5,
                                ),
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'W -> Wh(ohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                          ],
                        ),
                        SizedBox(
                          ////////////////////////////divisão linhas superior inferior
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> Ui(nF)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> Ui(ohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> Vi(nF)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> Vi(ohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> Wi(nF)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                                  width: 120,
                                  height: 50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelStyle: TextStyle(
                                        fontSize: _fletras,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      labelText: 'DC- -> Wi(ohms)',
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.auto,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
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
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //////////////////////////////////Placa retificadora//////////////////////
  ///
 void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
 }

  Widget _placaRetificadora() {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          child: Stepper(
            
            currentStep: _index2,
            onStepCancel: () {
              if (_index2 <= 0) {
                return;
              }
              setState(() {
                _index2--;
              });
            },
            onStepContinue: () {
              if (_index2 >= 3) {
                return;
              }
              setState(() {
                _index2++;
              });
            },
            onStepTapped: (index2) {
              setState(() {
                _index2 = index2;
              });
            },
            steps : [
              Step(
                title: Text("Existente"),
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              Row(
                                children: [
                                  new Radio(
                                    value: 1,
                                    groupValue: _radioValue,
                                   onChanged: _handleRadioValueChange,
                                  ),
                                  Text('SIM'),
                                ],
                              ),
                              Row(
                                children: [
                                  new Radio(
                                    value: 2,
                                    groupValue: _radioValue,
                                  onChanged: _handleRadioValueChange,
                                  ),
                                  Text('NÂO'),
                                ],
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
              ),

              Step(
                title: Text("Pré Carga"),
                content: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'L1 Diodo(Vdc)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'L1 Resistor(Ohms)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                          ),
                          Column(
                            children: [
                              Container(
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'L2 Diodo(Vdc)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                                height: 5,
                              ),
                              Container(
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'L2 Resistor(Ohms)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                          ),
                          Column(
                            children: [
                              Container(
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'L3 Diodo(Vdc)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                                height: 5,
                              ),
                              Container(
                                width: 120,
                                height: 50,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'L3 Resistor(Ohms)',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Step(
                title: Text("Situação"),
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              Row(
                                children: [
                                  new Radio(
                                    value: 1,
                                    groupValue: _radioValue,
                                   onChanged: _handleRadioValueChange,
                                  ),
                                  Text('Aprovado'),
                                ],
                              ),
                              Row(
                                children: [
                                  new Radio(
                                    value: 2,
                                    groupValue: _radioValue,
                                  onChanged: _handleRadioValueChange,
                                  ),
                                  Text('Reprovado'),
                                ],
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
              Step(title: Text('Observações'),
               content: 
                Container(
                                width: 500,
                                height: 500,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: _fletras,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    labelText: 'Observação',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.auto,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  maxLength: 100,
                                  //validator: _validarNome,
                                  onSaved: (String val) {
                                    nome = val;
                                  },
                          ),
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
