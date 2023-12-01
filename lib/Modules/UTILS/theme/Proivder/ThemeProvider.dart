import 'package:flutter/material.dart';
import 'package:platform_convertar/Modules/UTILS/theme/Model/ThemeModel.dart';

class ThemeProvider extends ChangeNotifier {
  Theme_ theme1 = Theme_(isDark: false);

  void ThemeSwitch({required bool value}) {
    theme1.isDark = value;
    notifyListeners();
  }
}
