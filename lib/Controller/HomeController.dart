import 'package:flutter/cupertino.dart';
import 'package:shopeapp/Infowidget/models/device_info.dart';

class Homecontroller extends ChangeNotifier {
  bool landescapmode = false;
  late DeviceInfo deviceInfo;
  int numOfItems = 1;
  bool favo = false;
  int selectedIndex = 0;
  selectcatogery(int i) {
    selectedIndex = i;
    notifyListeners();
  }

  Favorite() {
    favo = !favo;
    notifyListeners();
  }

  supCount() {
    if (numOfItems > 1) {
      numOfItems--;
    }
    notifyListeners();
  }

  sumCount() {
    numOfItems++;
    notifyListeners();
  }

  Landmode() {
    if (deviceInfo.orientation == Orientation.landscape) {
      landescapmode = true;
    } else {
      landescapmode = false;
    }
    if (landescapmode) {
      deviceInfo.screenHeight = deviceInfo.screenWidth;
      deviceInfo.screenWidth = deviceInfo.screenHeight;
      deviceInfo.localHeight = deviceInfo.localWidth;
      deviceInfo.localWidth = deviceInfo.localHeight;
    } else {
      deviceInfo.screenHeight == deviceInfo.screenHeight;
      deviceInfo.screenWidth = deviceInfo.screenWidth;
      deviceInfo.localHeight == deviceInfo.localHeight;
      deviceInfo.localWidth = deviceInfo.localWidth;
    }
  }
}
