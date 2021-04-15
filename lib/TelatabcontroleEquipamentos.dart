import 'package:flutter/material.dart';

import 'TelaInserirCliente.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Modelo Equipamento'),
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
                trailing: IconButton(
                    icon: const Icon(Icons.qr_code_outlined), onPressed: () {}),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 70,
                //color: Colors.blue[100],
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.indigo[900], width: 1),
                    gradient: LinearGradient(
                        colors: [Colors.grey[900], Colors.white],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Row(
                  //linha onde estão os icones botoes///////////////////////////////////////////////////
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.upload_file,
                              color: Colors.white),
                          //iconSize: 30,
                          onPressed: () {
                            // escreve aqui o que o botão vai fazer
                          },
                        ),
                        Text('Adicionar Preventiva'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.build, color: Colors.white),
                          //iconSize: 30,
                          onPressed: () {
                            // escreve aqui o que o botão vai fazer
                          },
                        ),
                        Text('Adicionar Corretiva'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.code, color: Colors.white),
                          //iconSize: 30,
                          onPressed: () {
                            // escreve aqui o que o botão vai fazer
                          },
                        ),
                        Text('Adicionar Ordem de Serviço'),
                      ],
                    ),
                  ],
                )),
            new Container(
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(color: Colors.indigo[800]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.amber[600],
                    controller: _controller,
                    tabs: [
                      new Tab(
                        icon: const Icon(Icons.home),
                        text: 'Manutenções\nPreventiva',
                      ),
                      new Tab(
                        icon: const Icon(Icons.my_location),
                        text: 'Manutenções\nCorretivas',
                      ),
                      new Tab(
                        icon: const Icon(Icons.home),
                        text: 'Ordens\nServiço',
                      ),
                      new Tab(
                        icon: const Icon(Icons.my_location),
                        text: 'Manuais',
                      ),
                      new Tab(
                        icon: const Icon(Icons.my_location),
                        text: 'Back Up',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: new TabBarView(
                  controller: _controller,
                  children: <Widget>[
                    new Card(
                        ///////////////////////////////////tela Preventiva
                        child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              color: Colors.grey[300],
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 20,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 100,
                                      //height: 100,
                                      margin: EdgeInsets.all(10),
                                      color: Colors.grey[400],
                                      child: Row(children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text('Codigo Formulario'),
                                                SizedBox(width: 40),
                                                Text('Data Execução'),
                                                SizedBox(width: 40),
                                                Text('Status'),
                                                SizedBox(width: 40),
                                              ]),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: IconButton(
                                              alignment: Alignment.topRight,
                                              icon: const Icon(
                                                  Icons.find_in_page),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                      ]),
                                    );
                                  }),
                            ),
                          ),
                        ],
                      ),
                    )),
                    new Card(
                        ///////////////////////////////////tela Corretiva
                        child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              color: Colors.grey[300],
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 20,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 100,
                                      //height: 100,
                                      margin: EdgeInsets.all(10),
                                      color: Colors.grey[400],
                                      child: Row(children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text('Codigo Formulario'),
                                                SizedBox(width: 40),
                                                Text('Data Execução'),
                                                SizedBox(width: 40),
                                                Text('Status'),
                                                SizedBox(width: 40),
                                              ]),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: IconButton(
                                              alignment: Alignment.topRight,
                                              icon: const Icon(
                                                  Icons.find_in_page),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                      ]),
                                    );
                                  }),
                            ),
                          ),
                        ],
                      ),
                    )),
                    new Card(
                        ///////////////////////////////////tela ordens de serviço
                        child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              color: Colors.grey[300],
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 20,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: 100,
                                      //height: 100,
                                      margin: EdgeInsets.all(10),
                                      color: Colors.grey[400],
                                      child: Row(children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text('Codigo Formulario'),
                                                SizedBox(width: 40),
                                                Text('Data Execução'),
                                                SizedBox(width: 40),
                                                Text('Status'),
                                                SizedBox(width: 40),
                                              ]),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: IconButton(
                                              alignment: Alignment.topRight,
                                              icon: const Icon(
                                                  Icons.find_in_page),
                                              onPressed: () {},
                                            ),
                                          ),
                                        ),
                                      ]),
                                    );
                                  }),
                            ),
                          ),
                        ],
                      ),
                    )),
                    new Card(//////////////////////////////////tela manuais

                        ),
                    new Card(//////////////////////////////////////tela backup's

                        ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaInserirCliente()),
                );
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.indigo[700],
            )
          ],
        ),
      ),
    );
  }
}
