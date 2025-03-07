import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 48),

        CircleAvatar(
          radius: 64,
          backgroundImage: AssetImage('assets/images/victorvaz.jpg'),
        ),

        Text(
          'Victor Vaz',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        Text(
          'Software Developer',
          style: TextStyle(fontSize: 18, color: Colors.white70),
        ),
      ],
    );
  }
}
