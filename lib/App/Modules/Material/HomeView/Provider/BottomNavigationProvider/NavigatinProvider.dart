import 'package:flutter/cupertino.dart';
import 'package:platform_convertar/App/Modules/Material/HomeView/Model/BottomNaivgationModel/NaivgationModel.dart';

class NavigationProvider extends ChangeNotifier {
  NavigationModel navigationModel = NavigationModel(selectedIndex: 0);

  void changePlatform({required int value}) {
    navigationModel.selectedIndex = value;
    notifyListeners();
  }
}
