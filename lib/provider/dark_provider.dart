import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TheamChanger with ChangeNotifier {
  var _thememode = ThemeMode.light;
  ThemeMode get thememode => _thememode;

  void setTheme(themeMode) {
    _thememode = themeMode;
    notifyListeners();
  }
}
