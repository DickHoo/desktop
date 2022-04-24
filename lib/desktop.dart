
import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class Desktop {
  static const MethodChannel _channel = MethodChannel('desktop');
  static Future<bool> get goBackDesktop async {
    await _channel.invokeMethod('goDesktop');
    return Platform.isIOS?true:false;
  }
}
