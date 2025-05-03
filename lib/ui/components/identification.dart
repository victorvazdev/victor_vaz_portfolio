import 'package:flutter/material.dart';

class Identification extends StatelessWidget {
  const Identification({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    const String myPhoto = 'assets/images/victorvaz.webp';

    return Column(
      children: [
        width > 750
            ? Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(myPhoto, height: 256),
                ),
              ],
            )
            : Column(
              children: [
                SizedBox(height: height * 0.03),

                const CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage(myPhoto),
                ),

                SelectableText(
                  'Victor Vaz',
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                SelectableText(
                  'Software Developer',
                  style: Theme.of(context).textTheme.titleMedium,
                ),

                SizedBox(height: height * 0.03),
              ],
            ),
      ],
    );
  }
}
