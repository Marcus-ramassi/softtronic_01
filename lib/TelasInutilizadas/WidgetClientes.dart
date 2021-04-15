import 'package:flutter/material.dart';
import 'package:softtronic_01/TelaCCM.dart';


class WidgetClientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
    onPressed: (){
     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaCCM())
                );
    },
     child:
      Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 70,
      //color: Colors.blue[100],

      //margens
      margin: EdgeInsets.all(
          20), //margem externa entre os conteiners nas 4 direções
      // margin: EdgeInsets.symmetric(horizontal: 30),
      //margin: EdgeInsets.symmetric(vertical: 30),
      //margin: EdgeInsets.only(top: 20),
      //margin: EdgeInsets.fromLTRB(
      // 30, 20, 30, 20), //esquerda, superior, direita e abaixo

      //espaçamento interno da borda do conteiner ate o conteudo
      padding: EdgeInsets.all(5), //com todas as opções acima

      //bordas
      decoration: BoxDecoration(
          //quando se uso o box decoration não declaraa cor
          border: Border.all(color: Colors.grey, width: 6),
          borderRadius: BorderRadius.all(
              Radius.circular(10)), // arredonda a borda do conteiner

          gradient: LinearGradient(
              colors: [Colors.grey, Colors.grey[100]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),

      child: Center(
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
        children: [
          Column(
            children: [
              Row(
              //mainAxisAlignment: MainAxisAlignment.center,
             // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                      child: Image.asset(
                    'lib/imagens/engrenagens.png',
                    fit: BoxFit.fill,
                  ),
                  width: 70,
                  height: 40,
                ),
              ]),
            ],
          ),
          Text('   texto com nome cliente',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ],
      )),
    ),
    );
  }
}
