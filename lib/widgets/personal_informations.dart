import 'package:flutter/material.dart';
import 'package:my_portfolio_mobile/constants.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 64,
          backgroundImage: AssetImage('assets/images/victorvaz.jpg'),
        ),

        Text(
          'Victor Vaz',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Constants.fontColor,
          ),
        ),

        Text(
          'Software Developer',
          style: TextStyle(fontSize: 18, color: Constants.secundaryFontColor),
        ),
      ],
    );
  }
}
