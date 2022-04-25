import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'desktop.dart';
class MainWidget extends StatefulWidget {
  final int? fnMillisecond;
  final Widget body;
  final Function fn;

  const MainWidget({Key? key, required this.body, this.fnMillisecond, required this.fn}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  DateTime? _lastClickTime;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if ((_lastClickTime == null || DateTime.now().difference(_lastClickTime!) > Duration(milliseconds: widget.fnMillisecond ?? 2000))&&Platform.isAndroid) {
            _lastClickTime = DateTime.now();
            widget.fn();
            return  false;
          }
          return await Desktop.goBackDesktop;
        },
          child: widget.body,
        );
  }
}
