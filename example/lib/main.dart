import 'package:flutter/material.dart';
import 'package:desktop/desktop.dart';
import 'package:desktop/mainwidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainWidget(
            body: Scaffold(
              appBar: AppBar(
                title: const Text('Plugin example app'),
              ),
              body: Center(
                child: GestureDetector(
                  onTap: () async {
                    await Desktop.goBackDesktop;
                  },
                  child: const Text("回首页"),
                ),
              ),
            ),
            fn: () => {
              Fluttertoast.showToast(msg: "再按一次退出软件" ,
              fontSize: 14,
              gravity: ToastGravity.BOTTOM,
              textColor: Colors.black,)}));
  }
}
