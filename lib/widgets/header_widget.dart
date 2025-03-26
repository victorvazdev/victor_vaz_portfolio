import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/constants.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        kIsWeb && width > 750
            ? Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(Constants.myPhoto, height: 256),
                ),
              ],
            )
            : Column(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage(Constants.myPhoto),
                ),

                SelectableText(
                  'Victor Vaz',
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                SelectableText(
                  'Software Developer',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
      ],
    );
  }
}
