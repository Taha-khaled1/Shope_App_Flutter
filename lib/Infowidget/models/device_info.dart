import 'package:flutter/cupertino.dart';

import '../enums/device_type.dart';

class DeviceInfo {
  final Orientation orientation;
  final DeviceType deviceType;
  late final double screenWidth;
  late final double screenHeight;
  late final double localWidth;
  late final double localHeight;

  DeviceInfo(
      {required this.orientation,
      required this.deviceType,
      required this.screenWidth,
      required this.screenHeight,
      required this.localWidth,
      required this.localHeight});
}
