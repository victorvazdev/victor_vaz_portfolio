import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/ui/components/professional_experience.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ExperienceSection extends StatefulWidget {
  final GlobalKey sectionKey;

  const ExperienceSection({super.key, required this.sectionKey});

  @override
  State<ExperienceSection> createState() => _ExperienceSectionState();
}

class _ExperienceSectionState extends State<ExperienceSection> {
  bool _hasShown = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('experience-visibility'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0 && !_hasShown) {
          setState(() {
            _hasShown = true;
          });
        }
      },
      child: AnimatedOpacity(
        opacity: _hasShown ? 1.0 : 0.0,
        duration: const Duration(seconds: 1),
        curve: Curves.easeIn,
        child: Container(
          key: widget.sectionKey,
          child: const ProfessionalExperience(),
        ),
      ),
    );
  }
}
