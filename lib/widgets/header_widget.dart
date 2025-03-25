import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        kIsWeb && width > 700
            ? Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/victorvaz.jpg',
                    height: 256,
                  ),
                ),
              ],
            )
            : Column(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage('assets/images/victorvaz.jpg'),
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
