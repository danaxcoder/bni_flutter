import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

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
      appBar: AppBar(
        title: const Text('Info Promo BNI'),
      ),
      body: WebViewX(
    initialContent: '<h2> Hello, world! </h2>',
    initialSourceType: SourceType.HTML,
    onWebViewCreated: (controller) { webviewController = controller;
        webviewController.loadContent(
            'https://flutter.dev',
            SourceType.url,
        );
    })
    );
  }
}