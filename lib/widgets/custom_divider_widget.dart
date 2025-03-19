import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/constants.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({super.key});

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
