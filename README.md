# battery_flutter

A Flutter plugin to retrieve the current battery level of the device on both Android and iOS.

---

## 🔋 Features

- Get battery level as a percentage
- Supports both Android and iOS
- Simple API using `MethodChannel`

---

## 🚀 Getting Started

### 1. Add dependency

In your `pubspec.yaml`:

```yaml
dependencies:
  battery_flutter: ^0.0.1
```

Then run:

```bash
flutter pub get
```

---

### 2. Import the plugin

```dart
import 'package:battery_flutter/battery_flutter.dart';
```

---

### 3. Usage Example

```dart
final battery = BatteryFlutter();
int? batteryLevel = await battery.getBattery();
print('Battery level: $batteryLevel%');
```

---

## 📱 Example App

A complete example is available in the [`example/`](example/) directory.

Run:

```bash
cd example
flutter run
```

---

## 🧪 Example UI Widget

```dart
import 'package:flutter/material.dart';
import 'package:battery_flutter/battery_flutter.dart';

class BatteryWidget extends StatefulWidget {
  @override
  _BatteryWidgetState createState() => _BatteryWidgetState();
}

class _BatteryWidgetState extends State<BatteryWidget> {
  int? _batteryLevel;

  @override
  void initState() {
    super.initState();
    _loadBatteryLevel();
  }

  Future<void> _loadBatteryLevel() async {
    final battery = BatteryFlutter();
    final level = await battery.getBattery();
    setState(() {
      _batteryLevel = level;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Battery Level: ${_batteryLevel ?? "Unknown"}%'),
    );
  }
}
```

---

## 📦 Platform Support

| Platform | Supported |
|----------|-----------|
| Android  | ✅ Yes    |
| iOS      | ✅ Yes    |
| Web      | ❌ No     |
| Windows  | ❌ No     |
| macOS    | ❌ No     |
| Linux    | ❌ No     |

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
