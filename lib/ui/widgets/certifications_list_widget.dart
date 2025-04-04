import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/models/certification.dart';
import 'package:victor_vaz_portfolio/ui/widgets/certification_widget.dart';

class CertificationsListWidget extends StatelessWidget {
  const CertificationsListWidget({super.key, required this.certifications});

  final List<Certification> certifications;

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
              ...certifications.map((e) => CertificationWidget(name: e.name)),
            ],
          ),
        ],
      ),
    );
  }
}
