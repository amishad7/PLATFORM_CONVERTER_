import 'package:flutter/cupertino.dart';
import 'package:platform_convertar/App/Modules/Material/HomeView/Model/PlatformModel/HomeModel.dart';

class PlatformProvider extends ChangeNotifier {
  PlatformModel p1 = PlatformModel(isIos: false);

  void changePlatform() {
    p1.isIos = !p1.isIos;

    notifyListeners();
  }
}
