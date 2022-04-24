import 'package:flutter/material.dart';
import 'package:desktop/desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(
        onWillPop: () async {
          return await Desktop.goBackDesktop;
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Center(
            // child: Text('Running on: $_platformVersion\n'),
            child: GestureDetector(
              onTap: () async {
                await Desktop.goBackDesktop;
              },
              child: const Text("回首页"),
            ),
          ),
        ),
      ),
    );
  }
}
