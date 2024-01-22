import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

final InAppLocalhostServer localhostServer = new InAppLocalhostServer();

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // start the localhost server
  await localhostServer.start();

  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Promo BNI'),
      ),
      body: Container(
          child: Column(children: <Widget>[
            Expanded(
              child: InAppWebView(
                /*initialUrlRequest: URLRequest(
                    url: Uri.parse("http://localhost:8080/assets/home.html")
                ),*/
                onWebViewCreated: (controller) {
                    controller.loadFile(assetFilePath: "assets/home.html");
                },
                onLoadStart: (controller, url) {},
                onLoadStop: (controller, url) {},
              ),
            )]
          )
      ),
    );
  }
}