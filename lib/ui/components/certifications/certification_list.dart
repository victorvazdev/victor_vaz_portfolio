import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/models/certification.dart';
import 'package:victor_vaz_portfolio/ui/components/certifications/certification_card.dart';

class CertificationsList extends StatelessWidget {
  final List<Certification> certificationsData;
  const CertificationsList({super.key, required this.certificationsData});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            width > 700 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          SelectableText(
            'Certificações',
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
          width > 700 ? SizedBox.shrink() : SizedBox(width: double.infinity),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              ...certificationsData.map(
                (e) => CertificationCard(name: e.name, url: e.url),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
