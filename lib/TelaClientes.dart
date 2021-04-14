import 'package:flutter/material.dart';
import 'package:softtronic_01/TelaInserirCliente.dart';
import 'package:softtronic_01/WidgetClientes.dart';

class TelaClientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
        backgroundColor: Colors.indigo[900],
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
                          icon: const Icon(Icons.add_box, color: Colors.white),
                          iconSize: 30,
                          onPressed: () {
                            // escreve aqui o que o botão vai fazer
                            Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => TelaInserirCliente()),
                            );
                          },
                        ),
                        Text('Adicionar Cliente'),
                      ],
                    ),
                   
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // parte do meio livre para trabalhar/////////////////////////////////
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
             
                  children: [
                    WidgetClientes(),
                    WidgetClientes(),
                    WidgetClientes(),
                    WidgetClientes(),
                    WidgetClientes(),
                    WidgetClientes(),
                    WidgetClientes(),
                    WidgetClientes(),
                    WidgetClientes(),
                    WidgetClientes(),
                    WidgetClientes(),
                    WidgetClientes(),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    )
    );
  }
}
