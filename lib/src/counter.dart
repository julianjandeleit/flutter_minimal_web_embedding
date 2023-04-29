//import 'dart:async';
// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:js/js.dart' as js;
//import 'package:js/js_util.dart' as js_util;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//@js.JSExport()
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    //final export = js_util.createDartExport(this);
    // These two are used inside the [js/js-interop.js]
    //js_util.setProperty(js_util.globalThis, '_appState', export);
    //js_util.callMethod<void>(js_util.globalThis, '_stateSet', []);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 25,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              '$index',
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
