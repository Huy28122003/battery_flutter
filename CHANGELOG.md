## 0.0.1

- Initial release of `battery_flutter` plugin.
- Supports getting battery level on:
    - ✅ Android (using `BatteryManager`)
    - ✅ iOS (using `UIDevice`)
- Exposes:
    - `getBattery()` → returns current battery percentage.
    - `getPlatformVersion()` → returns platform version (debug/testing purpose).
- Includes working example app in `/example` folder.
