import 'package:flutter/material.dart';
import 'package:softtronic_01/TelaCliente.dart';
import 'package:softtronic_01/TelaLogin.dart';
import 'package:softtronic_01/TelaSobre.dart';
import 'TelasInutilizadas/TelaEquipamento.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SoftTronic'),
        backgroundColor: Colors.indigo[800],
        //flexibleSpace: Padding(
        //padding: const EdgeInsets.symmetric(horizontal: 10),
        // child: Image(image: AssetImage('lib/imagens/icone.png'))),
      ),
      body: Center(
          child: Column(
        children: [
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
                        icon: const Icon(Icons.qr_code_scanner,
                            color: Colors.white),
                        iconSize: 30,
                        onPressed: () {
                          // escreve aqui o que o botão vai fazer
                        },
                      ),
                      Text(
                        'Qr code',
                        textScaleFactor: 0.8,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon:
                            const Icon(Icons.account_tree, color: Colors.white),
                        iconSize: 30,
                        onPressed: () {
                          // escreve aqui o que o botão vai fazer
                        },
                      ),
                      Text(
                        'Listar Equipamentos',
                        textScaleFactor: 0.8,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.add_box, color: Colors.white),
                        iconSize: 30,
                        onPressed: () {
                          // escreve aqui o que o botão vai fazer
                        },
                      ),
                      Text(
                        'Adicionar cadastro',
                        textScaleFactor: 0.8,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon:
                            const Icon(Icons.fingerprint, color: Colors.white),
                        iconSize: 30,
                        onPressed: () {
                          // escreve aqui o que o botão vai fazer
                           Navigator.push(
                             context,
                              MaterialPageRoute(
                            builder: (context) => TelaLogin()),
                );
                        },
                      ),
                      Text(
                        'Identificação',
                        textScaleFactor: 0.8,
                      ),
                    ],
                  ),
                ],
              )),
          Row(
            // parte do meio livre para trabalhar/////////////////////////////////
            children: [
              Container(
                //color: Colors.grey,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.75,
                child: Image(image: AssetImage('lib/imagens/icone.png')),
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
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: AssetImage(
                                'lib/imagens/fundo eletronica azul.png'),
                            fit: BoxFit.fill)),
                    child: Center(
                        child: Image.asset(
                      'lib/imagens/icone.png',
                      width: 40,
                      height: 40,
                    )),
                  )
                ],
              ),
            ),
            UserAccountsDrawerHeader(
                accountEmail: Text("user@invertronic.com"),
                accountName: Text("Usuario"),
                currentAccountPicture: CircleAvatar(
                  child: Text("ST"),
                )),
            ListTile(
              title: Text('Adicionar'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TelaClienteListView()),
                );
              },
            ),
            ListTile(
              title: Text('Pesquisar'),
              onTap: () {
               
              },
            ),
            ListTile(
              title: Text('Gerar Relatorio'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Gerar lista de equipamentos'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Abrir equipamento por qr code'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Abrir Equipamento por codigo'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaEquipamento()),
                );
              },
            ),
            SizedBox(
              width: 50,
              height: 50,
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Sobre'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaSobre()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
