import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:grocery_app/themes/shared_preferences.dart';

class ThemeModel extends ChangeNotifier {
  late bool _isDark;
  late ThemeSharedPreferences sharedPreferences;
  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
    sharedPreferences = ThemeSharedPreferences();
    getThemePreferences();
  }

  set isDark(bool value) {
    _isDark = value;
    sharedPreferences.setTheme(value);
    notifyListeners();
  }

  getThemePreferences() async {
    _isDark = await sharedPreferences.getTheme();
    notifyListeners();
  }
}
