import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPlugins {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugins');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
