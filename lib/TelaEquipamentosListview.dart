import 'package:flutter/material.dart';

import 'package:softtronic_01/TelatabcontroleEquipamentos.dart';

import 'TelaCCM.dart';
import 'TelasAdicionar/TelaAdicionarEquipamento.dart';
import 'TelasAdicionar/TelaInserirCliente.dart';

class TelaEquipamentoListview extends StatefulWidget {
  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<TelaEquipamentoListview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Equipamentos por CCM'),
        backgroundColor: Colors.indigo[800],
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
                    'Nome do CCm selecionado',
                    style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          //VERTICAL
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              color: Colors.grey[300],
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      //width: 200,
                      height: 180,
                      margin: EdgeInsets.all(20),
                      color: Colors.grey[400],
                      child: Row(children: [
                        Container(
                          width: 150,
                          child: Center(
                            child: Image.asset(
                                'lib/imagens/imagem equipamento.jpg'),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Aplicação',
                                  style: TextStyle(
                                      fontSize: 24,
                                      //fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10),
                                Text('Modelo'),
                                SizedBox(height: 10),
                                Text('TAG'),
                                SizedBox(height: 40),
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(
                                        child: Row(
                                           
                                          children: [
                                            Text('Entrar'),
                                            Icon(Icons.input),
                                          ],
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MyHomePage()));
                                        },
                                      ),
                                      SizedBox(width: 40),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red, // background
                                          onPrimary: Colors.white, // foreground
                                        ),
                                        child: Row(
                                          children: [
                                            Text('Editar'),
                                            Icon(Icons.edit),
                                          ],
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TelaCCM()));
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        )),
                      ]),
                    );
                  }),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TelaAdicionarEquipamento()),
              );
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.indigo[700],
          )
        ],
      ),
    );
  }
}
