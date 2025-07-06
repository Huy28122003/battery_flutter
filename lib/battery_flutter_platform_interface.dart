import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'battery_flutter_method_channel.dart';

abstract class BatteryFlutterPlatform extends PlatformInterface {
  /// Constructs a BatteryFlutterPlatform.
  BatteryFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static BatteryFlutterPlatform _instance = MethodChannelBatteryFlutter();

  /// The default instance of [BatteryFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelBatteryFlutter].
  static BatteryFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BatteryFlutterPlatform] when
  /// they register themselves.
  static set instance(BatteryFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
