import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/models/graduation.dart';

class AcademicBackgroundWidget extends StatelessWidget {
  const AcademicBackgroundWidget({super.key, required this.graduations});

  final List<Graduation> graduations;

  @override
  Widget build(BuildContext context) {
    const String sectionTitle = 'Formação Acadêmica';
    double width = MediaQuery.of(context).size.width;

    Widget buildGraduation(String name, String period) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              Icons.menu_book,
              size: width > 700 ? 64 : 32,
              color: Theme.of(context).iconTheme.color,
            ),
            const SizedBox(width: 16),
            Column(
              mainAxisAlignment:
                  width > 700
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  name,
                  style:
                      width > 700
                          ? TextStyle(
                            color:
                                Theme.of(context).textTheme.titleSmall!.color,
                            fontSize: 24,
                            fontWeight:
                                Theme.of(
                                  context,
                                ).textTheme.titleSmall!.fontWeight,
                          )
                          : Theme.of(context).textTheme.titleSmall,
                ),
                SelectableText(
                  period,
                  style:
                      width > 700
                          ? TextStyle(
                            color: Theme.of(context).textTheme.bodySmall!.color,
                          )
                          : Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            width > 700 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Text(
            sectionTitle,
            style:
                width > 700
                    ? TextStyle(
                      color: Theme.of(context).textTheme.titleSmall!.color,
                      fontSize: 28,
                      fontWeight:
                          Theme.of(context).textTheme.titleSmall!.fontWeight,
                    )
                    : Theme.of(context).textTheme.titleSmall,
          ),

          width > 700
              ? SizedBox(height: MediaQuery.sizeOf(context).height * 0.05)
              : const SizedBox.shrink(),

          width > 950
              ? SizedBox(
                child: Column(
                  children: [
                    width > 700
                        ? SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.05,
                        )
                        : const SizedBox.shrink(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ...graduations.map(
                          (graduation) => buildGraduation(
                            graduation.name,
                            graduation.period,
                          ),
                        ),
                      ],
                    ),

                    width > 700
                        ? SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.05,
                        )
                        : const SizedBox.shrink(),
                  ],
                ),
              )
              : Column(
                children: [
                  ...graduations.map(
                    (graduation) =>
                        buildGraduation(graduation.name, graduation.period),
                  ),
                ],
              ),
        ],
      ),
    );
  }
}
