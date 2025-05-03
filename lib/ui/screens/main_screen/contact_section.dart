import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/helpers/victor_data.dart';
import 'package:victor_vaz_portfolio/ui/components/contact/contact_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ContactSection extends StatefulWidget {
  final GlobalKey sectionKey;

  const ContactSection({super.key, required this.sectionKey});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  bool _hasShown = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('contact-visibility'),
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
          child: ContactWidget(
            email: me.email,
            phone: me.phone,
            linkedinUsername: me.linkedin,
            githubUsername: me.github,
            local: me.location,
          ),
        ),
      ),
    );
  }
}
