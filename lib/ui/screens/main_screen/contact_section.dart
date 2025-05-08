import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/models/contact.dart';
import 'package:victor_vaz_portfolio/app/models/victor_vaz.dart';
import 'package:victor_vaz_portfolio/ui/components/contact/contact_list.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ContactSection extends StatefulWidget {
  final VictorVaz data;
  final GlobalKey sectionKey;

  const ContactSection({
    super.key,
    required this.sectionKey,
    required this.data,
  });

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
          child: ContactList(
            email: widget.data.email,
            phone: widget.data.phone,
            linkedin: Contact(
              text: widget.data.linkedin,
              asset: 'assets/images/linkedin-logo.svg',
              link: 'https://www.linkedin.com/in/${widget.data.linkedin}/',
              semanticLabel: 'Nome de usuário no LinkedIn',
            ),
            github: Contact(
              text: widget.data.github,
              asset: 'assets/images/github-logo.svg',
              link: 'https://github.com/${widget.data.github}',
              semanticLabel: 'Nome de usuário no GitHub',
            ),
            local: Contact(
              text: widget.data.location,
              link: 'https://maps.app.goo.gl/xTcMRQEX93AVQpa5A',
              icon: Icons.place,
              semanticLabel: 'Local de habitação',
            ),
          ),
        ),
      ),
    );
  }
}
