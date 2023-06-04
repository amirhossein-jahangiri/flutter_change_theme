import 'package:flutter/foundation.dart';
import 'package:flutter_dark_and_light_mode/shared_pref_services.dart';

class ThemeStateProvider with ChangeNotifier {
  bool _isDarkTheme = false;
  bool get isDarkTheme => _isDarkTheme;



  Future<void> setDarkTheme() async {
    _isDarkTheme =! _isDarkTheme;
    SharedPrefServices.setBoolMethod('THEME_STATUS', _isDarkTheme);
    notifyListeners();
  }

  Future<void> getDarkTheme() async {
    _isDarkTheme = await SharedPrefServices.getBoolMethod('THEME_STATUS');
    notifyListeners();
  }

}
