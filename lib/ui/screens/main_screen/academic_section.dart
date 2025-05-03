import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/helpers/victor_data.dart';
import 'package:victor_vaz_portfolio/ui/components/academic_background.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AcademicSection extends StatefulWidget {
  final GlobalKey sectionKey;

  const AcademicSection({super.key, required this.sectionKey});

  @override
  State<AcademicSection> createState() => _AcademicSectionState();
}

class _AcademicSectionState extends State<AcademicSection> {
  bool _hasShown = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('academic-visibility'),
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
          child: AcademicBackground(graduations: me.graduations),
        ),
      ),
    );
  }
}
