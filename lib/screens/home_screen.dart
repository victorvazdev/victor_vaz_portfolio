import 'package:flutter/material.dart';
import 'package:my_portfolio_mobile/constants.dart';
import 'package:my_portfolio_mobile/widgets/personal_informations.dart';
import 'package:my_portfolio_mobile/widgets/personal_profile.dart';
import 'package:my_portfolio_mobile/widgets/stylized_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.veryDarkColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Header(),
            SizedBox(height: 12),
            PersonalProfile(),
            SizedBox(height: 16),
            Divider(
              height: 1,
              thickness: 1,
              indent: 10,
              endIndent: 10,
              color: Colors.white,
            ),
            SizedBox(height: 16),
            Row(
              children: [
                StylizedButton(function: () {}, text: 'Formação'),
                SizedBox(width: 12),
                StylizedButton(function: () {}, text: 'Certificados'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
