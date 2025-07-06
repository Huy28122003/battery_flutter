import 'package:flutter_test/flutter_test.dart';
import 'package:battery_flutter/battery_flutter.dart';
import 'package:battery_flutter/battery_flutter_platform_interface.dart';
import 'package:battery_flutter/battery_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBatteryFlutterPlatform
    with MockPlatformInterfaceMixin
    implements BatteryFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BatteryFlutterPlatform initialPlatform = BatteryFlutterPlatform.instance;

  test('$MethodChannelBatteryFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBatteryFlutter>());
  });

  test('getPlatformVersion', () async {
    BatteryFlutter batteryFlutterPlugin = BatteryFlutter();
    MockBatteryFlutterPlatform fakePlatform = MockBatteryFlutterPlatform();
    BatteryFlutterPlatform.instance = fakePlatform;

    expect(await batteryFlutterPlugin.getPlatformVersion(), '42');
  });
}
