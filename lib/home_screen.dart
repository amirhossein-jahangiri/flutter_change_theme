import 'package:flutter/material.dart';
import 'package:flutter_dark_and_light_mode/theme_provider.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isDarkTheme = false;
  @override
  void didChangeDependencies() {
    _isDarkTheme = context.watch<ThemeProvider>().getDarkTheme;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Sample Project'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Text(
            _isDarkTheme ? 'Dark Mode is Active' : 'Light Mode is Active',
            style: TextStyle(
              color: Theme.of(context).textTheme.titleMedium!.color,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SwitchListTile(
            value: context.watch<ThemeProvider>().getDarkTheme,
            title: const Text('Switch Theme'),
            onChanged: (bool? thisValue) {
              // write code
              context.read<ThemeProvider>().setDarkTheme(thisValue!);
            },
          ),
        ],
      ),
    );
  }
}
