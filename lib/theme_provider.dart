import 'package:flutter/foundation.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkTheme = false;
  bool get getDarkTheme => _isDarkTheme;

  void setDarkTheme(bool value) {
    _isDarkTheme = value;
    notifyListeners();
  }
}