import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/ui/styles/themes.dart';
import 'package:victor_vaz_portfolio/ui/screens/main_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(
    ThemeMode.system,
  );

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (context, currentThemeMode, _) {
        return MaterialApp(
          title: 'Victor Vaz',
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme,
          themeMode: currentThemeMode,
          home: MainScreen(themeNotifier: themeNotifier),
        );
      },
    );
  }
}
