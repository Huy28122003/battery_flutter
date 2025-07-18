import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'battery_flutter_platform_interface.dart';

/// An implementation of [BatteryFlutterPlatform] that uses method channels.
class MethodChannelBatteryFlutter extends BatteryFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('battery_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
