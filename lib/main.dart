import 'package:dibs/shared/custom_drawer.dart';
import 'package:dibs/shared/web_view.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

//void main() => runApp(MyApp());
void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.black
        ),
        home:  HomePage(),
      )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.white54,
          title: Image.asset(
            'assets/images/title.png',
          ),
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: (){

              },
            ),
          ],
        ),
        body:  WebViewPage(initialUrl: "https://leadersoftware.com.br/app/inicio.html"),
        drawer: CustomDrawer()
      );

  }
}

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white54,
        title: Image.asset(
          'assets/images/title.png',
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: (){

            },
          ),
        ],
      ),
      body:  WebViewPage(initialUrl: "https://leadersoftware.com.br/app/inicio.html"),
      drawer: CustomDrawer()
    );
  }
}

class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white54,
        title: Image.asset(
          'assets/images/title.png',
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            onPressed: (){
            },
          ),
        ],
      ),
      body: WebViewPage(initialUrl: "https://leadersoftware.com.br/app/config.html"),
      drawer: CustomDrawer()
    );
  }
}