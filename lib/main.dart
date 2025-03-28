import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/constants.dart';
import 'package:victor_vaz_portfolio/screens/main_screen.dart';
import 'package:victor_vaz_portfolio/screens/web_main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Victor Vaz',
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      themeMode: ThemeMode.system,
      home: kIsWeb ? const WebMainScreen() : const MainScreen(),
    );
  }
}
