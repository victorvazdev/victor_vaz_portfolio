import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/screens/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Victor Vaz Portfolio', home: MainScreen());
  }
}
