import 'package:flutter/material.dart';

class ThemeConfig {
  static ThemeData theme(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? Colors.black : Colors.grey.shade200,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.teal),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateColor.resolveWith((states) => Colors.teal),
        trackColor: MaterialStateColor.resolveWith((states) => Colors.teal),
      ),
      textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
          color: isDarkTheme ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
