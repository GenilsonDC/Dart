void main() {
  Device myDevice = Device(deviceStyle: DeviceType.smartPhone);
}

class Device {
  DeviceType deviceStyle;
  Device({required this.deviceStyle});
}

enum DeviceType { smartPhone, smartTV, web, wearable }
