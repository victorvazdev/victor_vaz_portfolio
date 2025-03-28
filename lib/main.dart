import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/ui/styles/themes.dart';
import 'package:victor_vaz_portfolio/ui/screens/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Victor Vaz',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: ThemeMode.system,
      home: const MainScreen(),
    );
  }
}
