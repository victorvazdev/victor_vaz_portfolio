import 'package:flutter/material.dart';

class BiographyWidget extends StatelessWidget {
  const BiographyWidget({
    super.key,
    required this.name,
    required this.position,
    required this.biography,
  });

  final String name;
  final String position;
  final String biography;

  @override
  Widget build(BuildContext context) {
    const String sectionTitle = 'Biografia';
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          width > 750
              ? Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      name,
                      style: TextStyle(
                        fontSize: 51,
                        fontWeight:
                            Theme.of(context).textTheme.titleLarge!.fontWeight,
                        color: Theme.of(context).textTheme.titleLarge!.color,
                      ),
                    ),

                    SelectableText(
                      position,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight:
                            Theme.of(context).textTheme.titleMedium!.fontWeight,
                        color: Theme.of(context).textTheme.titleMedium!.color,
                      ),
                    ),
                  ],
                ),
              )
              : SelectableText(
                sectionTitle,
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.left,
              ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectableText(
              biography,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
