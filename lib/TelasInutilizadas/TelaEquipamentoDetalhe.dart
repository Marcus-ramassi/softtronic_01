import 'package:flutter/material.dart';

class TelaEquipamentoDetalhe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Equipamento'),
          backgroundColor: Colors.indigo[900],
        ),
        body: Center(
          child: Column(children: [
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
                        Text('Adicionar Start up / Programação'),
                      ],
                    ),
                    
                   
                  ],
                )),

                ////////////////////////
                
          ]),
        ));
  }
}
