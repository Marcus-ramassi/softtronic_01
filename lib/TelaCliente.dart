import 'package:flutter/material.dart';

import 'TelaCCM.dart';
import 'TelaInserirCliente.dart';
import 'TelaUnidade.dart';

class TelaClienteListView extends StatefulWidget {
  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<TelaClienteListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        backgroundColor: Colors.indigo[800],
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
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
                            child: Image.network(
                                'https://picsum.photos/id/${index + 1}/120'),
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
                                    'Nome do cliente \nCNPJ \n Telefone\n email'),
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
                                                      TelaUnidade()));
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
                MaterialPageRoute(builder: (context) => TelaInserirCliente()),
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
