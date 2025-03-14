import 'package:flutter/material.dart';
import 'package:my_portfolio_mobile/constants.dart';
import 'package:my_portfolio_mobile/widgets/contact_widget.dart';
import 'package:my_portfolio_mobile/widgets/who_i_am_widget.dart';
import 'package:my_portfolio_mobile/widgets/biography_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    _BuildHome(),
    Center(child: SafeArea(child: WhoIAmWidget())),
    Center(child: SafeArea(child: WhoIAmWidget())),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.silverBackground,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Constants.fontColor,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Experiência'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Certificações',
          ),
        ],
      ),
    );
  }
}

class _BuildHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            WhoIAmWidget(),

            SizedBox(height: 16),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  BiographyWidget(),

                  _BuildCustomDivider(),

                  ContactWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildCustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      thickness: 0,
      indent: 20,
      endIndent: 20,
      color: Constants.darkBackground,
    );
  }
}
