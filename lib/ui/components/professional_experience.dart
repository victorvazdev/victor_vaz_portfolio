import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/models/experience.dart';

class ProfessionalExperience extends StatelessWidget {
  final List<Experience> experienceData;

  const ProfessionalExperience({super.key, required this.experienceData});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    Widget buildExperience(String name, String period, String description) {
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
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.work,
                  size: width > 700 ? 64 : 32,
                  color: Theme.of(context).iconTheme.color,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        name,
                        style:
                            width > 700
                                ? TextStyle(
                                  color:
                                      Theme.of(
                                        context,
                                      ).textTheme.titleSmall!.color,
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
                                  color:
                                      Theme.of(
                                        context,
                                      ).textTheme.bodySmall!.color,
                                )
                                : Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            width > 700 ? SizedBox(height: 16) : SizedBox.shrink(),
            SelectableText(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            width > 700 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          SelectableText(
            'Experiência Profissional',
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

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...experienceData.map(
                (e) => Column(
                  children: [
                    buildExperience(e.name, e.period, e.description),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
