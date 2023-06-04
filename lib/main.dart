import 'package:flutter/material.dart';
import 'package:flutter_dark_and_light_mode/shared_pref_services.dart';
import 'package:flutter_dark_and_light_mode/theme_config.dart';
import 'package:flutter_dark_and_light_mode/theme_provider.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => ThemeStateProvider(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void didChangeDependencies() {
    context.read<ThemeStateProvider>().getDarkTheme();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeStateProvider>(
      builder: (context, theme, child) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeConfig.lightTheme,
          darkTheme: ThemeConfig.darkTheme,
          themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
          home: const HomeScreen(),
        );
      }
    );
  }
}
