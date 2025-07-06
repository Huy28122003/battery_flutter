import Flutter
import UIKit

public class BatteryFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "battery_flutter", binaryMessenger: registrar.messenger())
    let instance = BatteryFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "getBattery":
      UIDevice.current.isBatteryMonitoringEnabled = true
      result(Int(UIDevice.current.batteryLevel * 100))
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
