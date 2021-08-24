import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key, required this.initialUrl}) : super(key: key);

  final String initialUrl;



  @override
  _WebViewPageState createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: widget.initialUrl, //"https://leadersoftware.com.br/app/inicio.html",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
