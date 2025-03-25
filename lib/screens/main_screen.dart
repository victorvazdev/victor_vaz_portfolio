import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/screens/about_screen.dart';
import 'package:victor_vaz_portfolio/screens/certifications_screen.dart';
import 'package:victor_vaz_portfolio/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    AboutScreen(),
    CertificationsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Sobre'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Certificações',
          ),
        ],
      ),
    );
  }
}
