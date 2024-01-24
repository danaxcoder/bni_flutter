import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webviewx/webviewx.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
    late WebViewXController webviewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewX(
          width: 400,
          height: 400,
    initialContent: '<p>Hello world</p>',
    initialSourceType: SourceType.html,
    onWebViewCreated: (controller) { webviewController = controller;
        webviewController.loadContent(
            //'assets/assets/home.html',
            'https://flutter.dev',
            SourceType.url
            //fromAssets: true
        );
    })
    );
  }
}