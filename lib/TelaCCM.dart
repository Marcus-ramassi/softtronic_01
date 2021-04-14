import 'package:flutter/material.dart';
import 'package:softtronic_01/TelaEquipamento.dart';
import 'package:softtronic_01/TelaInserirCliente.dart';
import 'package:softtronic_01/WidgetClientes.dart';

import 'WidgetCCM.dart';

class TelaCCM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Nome do cliente      Localidade'),
          backgroundColor: Colors.grey,
          //flexibleSpace: Padding(
          //padding: const EdgeInsets.symmetric(horizontal: 10),
          // child: Image(image: AssetImage('lib/imagens/icone.png'))),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
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
                              icon: const Icon(Icons.add_box,
                                  color: Colors.white),
                              iconSize: 30,
                              onPressed: () {
                                // escreve aqui o que o botão vai fazer
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          TelaInserirCliente()),
                                );
                              },
                            ),
                            Text('Adicionar Preditiva'),
                          ],
                        ),
                      ],
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                                height: 150,
                                margin: EdgeInsets.all(20),
                                color: Colors.grey[200],
                                child: Row(children: [
                                  Container(
                                    width: 150,
                                    child: Center(
                                      child: Image.asset(
                                          'lib/imagens/imagem ccm.jpg'),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                              'Descrição do CCM \nCodigo de localidade \nResponsasvel'),
                                          SizedBox(height: 40),
                                          Container(
                                            alignment: Alignment.center,
                                            child: Row(
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
                                                                TelaEquipamento()));
                                                  },
                                                ),
                                                SizedBox(width: 40),
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Colors
                                                        .red, // background
                                                    onPrimary: Colors
                                                        .white, // foreground
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
                                                            builder:
                                                                (context) =>
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
                          MaterialPageRoute(
                              builder: (context) => TelaInserirCliente()),
                        );
                      },
                      child: Icon(Icons.add),
                      backgroundColor: Colors.indigo[700],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
