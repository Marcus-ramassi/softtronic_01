import 'package:flutter/material.dart';

class TelaQrcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SoftTronic'),
        backgroundColor: Colors.indigo[800],
      ),
      body: Center(
          child: Column(
        children: [
         
          Row(
            // parte do meio livre para trabalhar/////////////////////////////////
            children: [
              Container(
                //color: Colors.grey,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.75,
                child: Image(image: AssetImage('lib/imagens/qrCode.jpg')),
              )
            ],
          ),
          // imagem final da pagina////////////////////////////////////////////////
          //Row(
          //children: [
          //Container(
          //width: MediaQuery.of(context).size.width * 1,
          //height: MediaQuery.of(context).size.height * 0.2,
          //child: Image.asset(
          //'lib/imagens/capa_weg.png',
          //fit: BoxFit.fill,
          //),
          //),
          //],
          //)
        ],
      )),
    );
  }
}
