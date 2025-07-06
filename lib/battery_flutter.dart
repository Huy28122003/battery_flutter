import 'package:flutter/services.dart';

import 'battery_flutter_platform_interface.dart';

class BatteryFlutter {
  static const MethodChannel _channel =
      MethodChannel('com.example.battery_flutter/BATTERY');

  Future<String?> getPlatformVersion() {
    return BatteryFlutterPlatform.instance.getPlatformVersion();
  }

  Future<int> getBattery() async {
    final int level = await _channel.invokeMethod('getBattery');
    return level;
  }
}
