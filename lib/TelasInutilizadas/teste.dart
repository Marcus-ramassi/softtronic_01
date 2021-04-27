import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  // define your tab controller here
  TabController _tabController;
  int _index = 0;
  String nome, email, celular, cnpj, razaoSocial;

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 9, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Formulario Preventiva',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.green,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              tabs: <Widget>[
                Text('CIRCUITO RETIFICADOR'),
                Text('PONTE INVERSORA/IGBT'),
                Text('PLACA RETIFICADORA'),
                Text('VENTILAÇÃO'),
                Text('FRENAGEM'),
                Text('CAPACITORES'),
                Text('AMBIENTE'),
                Text('OBSERVAÇÃO'),
                Text('SITUAÇÃO'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Center(
                  child: Container(
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
                          content: Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'L1 -> DC+',
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
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                        decoration: new InputDecoration(
                                          labelText: 'L2 -> DC+',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        // maxLength: 10,
                                        // validator: _validarNome,
                                        onSaved: (String val) {
                                          razaoSocial = val;
                                        },
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                          decoration: new InputDecoration(
                                            labelText: 'L3 -> DC+',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          keyboardType: TextInputType.phone,
                                          //maxLength: 10,
                                          // validator: _validarCelular,
                                          onSaved: (String val) {
                                            celular = val;
                                          }),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'DC- -> L1',
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
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                        decoration: new InputDecoration(
                                          labelText: 'DC- -> L2',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        // maxLength: 10,
                                        // validator: _validarNome,
                                        onSaved: (String val) {
                                          razaoSocial = val;
                                        },
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                          decoration: new InputDecoration(
                                            labelText: 'DC- -> L3',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          keyboardType: TextInputType.phone,
                                          //maxLength: 10,
                                          // validator: _validarCelular,
                                          onSaved: (String val) {
                                            celular = val;
                                          }),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Step(
                          title: Text("Step 2 title"),
                          content: Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'L1 -> DC+',
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
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                        decoration: new InputDecoration(
                                          labelText: 'L2 -> DC+',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        // maxLength: 10,
                                        // validator: _validarNome,
                                        onSaved: (String val) {
                                          razaoSocial = val;
                                        },
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                          decoration: new InputDecoration(
                                            labelText: 'L3 -> DC+',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          keyboardType: TextInputType.phone,
                                          //maxLength: 10,
                                          // validator: _validarCelular,
                                          onSaved: (String val) {
                                            celular = val;
                                          }),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'DC- -> L1',
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
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                        decoration: new InputDecoration(
                                          labelText: 'DC- -> L2',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        // maxLength: 10,
                                        // validator: _validarNome,
                                        onSaved: (String val) {
                                          razaoSocial = val;
                                        },
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      height: 100,
                                      child: TextFormField(
                                          decoration: new InputDecoration(
                                            labelText: 'DC- -> L3',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          keyboardType: TextInputType.phone,
                                          //maxLength: 10,
                                          // validator: _validarCelular,
                                          onSaved: (String val) {
                                            celular = val;
                                          }),
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
                ),
                Center(
                  child: Text(
                    'PONTE INVERSORA/IGBT',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    'PLACA RETIFICADORA',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    'VENTILAÇÃO',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    'FRENAGEM',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    'CAPACITORES',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    'AMBIENTE',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    'OBSERVAÇÕES',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: Text(
                    'SITUAÇÃO',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
