import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/models/graduation.dart';

class AcademicBackground extends StatelessWidget {
  const AcademicBackground({super.key, required this.graduations});

  final List<Graduation> graduations;

  @override
  Widget build(BuildContext context) {
    const String sectionTitle = 'Formação Acadêmica';
    double width = MediaQuery.of(context).size.width;

    Widget buildGraduation(String name, String period) {
      return Container(
        padding: const EdgeInsets.all(48),
        decoration: BoxDecoration(
          color: Theme.of(context).appBarTheme.backgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Theme.of(
                context,
              ).appBarTheme.shadowColor!.withValues(alpha: 0.1),
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
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
          SelectableText(
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

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

          width > 1100
              ? SizedBox(
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

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

                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
                  ],
                ),
              )
              : Column(
                children: [
                  ...graduations.map((graduation) {
                    return Column(
                      children: [
                        buildGraduation(graduation.name, graduation.period),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.03,
                        ),
                      ],
                    );
                  }),
                ],
              ),
        ],
      ),
    );
  }
}
