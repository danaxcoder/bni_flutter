import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webviewx/webviewx.dart';
import 'dart:html';
import 'dart:ui' as ui;

void main() {
  ui.platformViewRegistry.registerViewFactory(
      'hello-world-html',
          (int viewId) => IFrameElement()
        ..width = '640'
        ..height = '360'
        ..src = 'assets/assets/assets/home.html'
        ..style.border = 'none');

  runApp(Directionality(
    textDirection: TextDirection.ltr,
    child: SizedBox(
      width: 640,
      height: 360,
      child: HtmlElementView(viewType: 'hello-world-html'),
    ),
  ));
}

/*Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
    late WebViewXController webviewController;
    var finished = false;
    
  @override
  void initState() {
      super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
                  children: [
                      WebViewX(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
    initialContent: '<p>.</p>',
    initialSourceType: SourceType.html,
    onWebViewCreated: (controller) { webviewController = controller;
        webviewController.loadContent(
            'assets/assets/home.html',
            //'https://flutter.dev',
            SourceType.html,
            fromAssets: true
        );
    },
    onPageFinished: (value) {
        setState(() {
            finished = true;
        });
    }),
    (() {
        if (finished) {
            return SizedBox.shrink();
        } else {
            return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Color(0xffe3e8eb),
                  child: Center(
                      child: SizedBox(
                          width: 50,
                          height: 50,
                          child: LinearProgressIndicator(
                              color: Color(0xffff7f08),
                              borderRadius: BorderRadius.circular(25)
                          )
                      )
                  )
              );
        }
    }())
                  ]
              )
    );
  }
}*/