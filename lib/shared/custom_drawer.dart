import 'package:flutter/material.dart';

import '../main.dart';


class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black54,
            ),
            accountName: Text("Carteira Ativa"),
            accountEmail: Text("3Dflo87D6FD7Drf4Ft77OoiKLH"),
            currentAccountPicture: CircleAvatar(
              radius: 30.0,
              backgroundImage:
              AssetImage(
                  'assets/images/perfil.jpg'),
              backgroundColor: Colors.transparent,
            ),
          ),
          const SizedBox(height: 18,),
          new Text("  Funcionalidades", style: TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(height: 18,),
          ListTile(
              leading: Icon(Icons.home, color: Colors.black,),
              tileColor: Colors.grey[200],
              selectedTileColor: Colors.red,
              title: Text("Inicio"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrimeiraRota()),
                );
              }),
          ListTile(
              leading: Icon(Icons.settings, color: Colors.black,),
              tileColor: Colors.grey[200],
              selectedTileColor: Colors.red,
              title: Text("Configurações"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SegundaRota()),
                );
              }),
          ListTile(
              leading: Icon(Icons.clean_hands, color: Colors.black,),
              tileColor: Colors.grey[200],
              selectedTileColor: Colors.red,
              title: Text("Dibsclub / Cashback"),
              onTap: () {
                debugPrint('toquei no drawer');
              }),
          ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.black,),
              tileColor: Colors.grey[200],
              selectedTileColor: Colors.red,
              title: Text("Sair"),
              onTap: () {
                debugPrint('toquei no drawer');
              }),
          const SizedBox(height: 18,),
          new Text("  Suporte", style: TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(height: 18,),
          ListTile(
              leading: Icon(Icons.contact_support),
              tileColor: Colors.grey[200],
              selectedTileColor: Colors.red,
              title: Text("FAQ"),
              onTap: () {
                debugPrint('toquei no drawer');
              }),
          ListTile(
              leading: Icon(Icons.insert_drive_file_sharp),
              tileColor: Colors.grey[200],
              selectedTileColor: Colors.red,
              title: Text("Termos de Uso/Privacidade"),
              onTap: () {
                debugPrint('toquei no drawer');
              }),
          ListTile(
              leading: Icon(Icons.chat_bubble),
              tileColor: Colors.grey[200],
              selectedTileColor: Colors.red,
              title: Text("Contato"),
              onTap: () {
                debugPrint('toquei no drawer');
              }),
        ],
      ),
    );
  }
}
