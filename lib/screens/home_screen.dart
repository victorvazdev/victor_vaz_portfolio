import 'package:flutter/material.dart';
import 'package:my_portfolio_mobile/widgets/header.dart';
import 'package:my_portfolio_mobile/widgets/personal_profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(),
          PersonalProfile(),
          Divider(
            height: 1,
            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Color(0xFF343f51),
          ),
        ],
      ),
    );
  }
}
