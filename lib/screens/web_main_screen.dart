import 'package:flutter/material.dart';

// Screens
// import 'package:victor_vaz_portfolio/screens/main_screen.dart';

// Widgets
import 'package:victor_vaz_portfolio/widgets/academic_background_widget.dart';
import 'package:victor_vaz_portfolio/widgets/biography_widget.dart';
import 'package:victor_vaz_portfolio/widgets/certifications_list_widget.dart';
import 'package:victor_vaz_portfolio/widgets/contact_widget.dart';
import 'package:victor_vaz_portfolio/widgets/professional_experience.dart';
import 'package:victor_vaz_portfolio/widgets/header_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';

class WebMainScreen extends StatefulWidget {
  const WebMainScreen({super.key});

  @override
  State<WebMainScreen> createState() => _WebMainScreenState();
}

class _WebMainScreenState extends State<WebMainScreen> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _headerKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _academicKey = GlobalKey();
  final GlobalKey _certificationsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  bool _hasShownHeader = false;
  bool _hasShownExperience = false;
  bool _hasShownAcademic = false;
  bool _hasShownCertifications = false;
  bool _hasShownContact = false;
  bool _hasShownCopyrights = false;

  void _scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          onPressed: () => _scrollTo(_headerKey),
          child: SizedBox(
            width: 124,
            child: Row(
              children: [
                Icon(
                  Icons.code,
                  size: 32,
                  color: Theme.of(context).iconTheme.color,
                ),
                const SizedBox(width: 8),
                Text(
                  'Victor Vaz',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
        ),
        titleSpacing: width > 950 ? 72 : 32,
        actionsPadding: EdgeInsets.only(right: width > 950 ? 72 : 32),
        actions: [
          TextButton(
            style: Theme.of(context).textButtonTheme.style,
            onPressed: () => _scrollTo(_experienceKey),
            child: Text(
              width < 900 ? 'E. Profissional' : 'Experiência Profissional',
            ),
          ),
          TextButton(
            style: Theme.of(context).textButtonTheme.style,
            onPressed: () => _scrollTo(_academicKey),
            child: Text(width < 900 ? 'F. Acadêmica' : 'Formação Acadêmica'),
          ),
          TextButton(
            style: Theme.of(context).textButtonTheme.style,
            onPressed: () => _scrollTo(_certificationsKey),
            child: const Text('Certificações'),
          ),
          TextButton(
            style: Theme.of(context).textButtonTheme.style,
            onPressed: () => _scrollTo(_contactKey),
            child: const Text('Contato'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            // Main content card
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  // Header section
                  VisibilityDetector(
                    key: const Key('header-visibility'),
                    onVisibilityChanged: (info) {
                      if (info.visibleFraction > 0 && !_hasShownHeader) {
                        setState(() {
                          _hasShownHeader = true;
                        });
                      }
                    },
                    child: AnimatedOpacity(
                      opacity: _hasShownHeader ? 1.0 : 0.0,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn,
                      child: Container(
                        key: _headerKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                width > 700
                                    ? Column(
                                      children: [
                                        SizedBox(
                                          height:
                                              MediaQuery.sizeOf(
                                                context,
                                              ).height *
                                              0.2,
                                        ),
                                        Row(
                                          children: [
                                            const HeaderWidget(),
                                            const Expanded(
                                              child: BiographyWidget(),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height:
                                              MediaQuery.sizeOf(
                                                context,
                                              ).height *
                                              0.2,
                                        ),
                                      ],
                                    )
                                    : Column(
                                      children: [
                                        const HeaderWidget(),
                                        const BiographyWidget(),
                                      ],
                                    ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Experience section
                  VisibilityDetector(
                    key: const Key('experience-visibility'),
                    onVisibilityChanged: (info) {
                      if (info.visibleFraction > 0 && !_hasShownExperience) {
                        setState(() {
                          _hasShownExperience = true;
                        });
                      }
                    },
                    child: AnimatedOpacity(
                      opacity: _hasShownExperience ? 1.0 : 0.0,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn,
                      child: Container(
                        key: _experienceKey,
                        child: const ProfessionalExperience(),
                      ),
                    ),
                  ),
                  // Academic section
                  VisibilityDetector(
                    key: const Key('academic-visibility'),
                    onVisibilityChanged: (info) {
                      if (info.visibleFraction > 0 && !_hasShownAcademic) {
                        setState(() {
                          _hasShownAcademic = true;
                        });
                      }
                    },
                    child: AnimatedOpacity(
                      opacity: _hasShownAcademic ? 1.0 : 0.0,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn,
                      child: Container(
                        key: _academicKey,
                        child: const AcademicBackgroundWidget(),
                      ),
                    ),
                  ),
                  // Certifications section
                  VisibilityDetector(
                    key: const Key('certifications-visibility'),
                    onVisibilityChanged: (info) {
                      if (info.visibleFraction > 0 &&
                          !_hasShownCertifications) {
                        setState(() {
                          _hasShownCertifications = true;
                        });
                      }
                    },
                    child: AnimatedOpacity(
                      opacity: _hasShownCertifications ? 1.0 : 0.0,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn,
                      child: Container(
                        key: _certificationsKey,
                        child: const CertificationsListWidget(),
                      ),
                    ),
                  ),
                  width > 700
                      ? SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.05,
                      )
                      : const SizedBox.shrink(),
                  // Contact section
                  VisibilityDetector(
                    key: const Key('contact-visibility'),
                    onVisibilityChanged: (info) {
                      if (info.visibleFraction > 0 && !_hasShownContact) {
                        setState(() {
                          _hasShownContact = true;
                        });
                      }
                    },
                    child: AnimatedOpacity(
                      opacity: _hasShownContact ? 1.0 : 0.0,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn,
                      child: Container(
                        key: _contactKey,
                        child: const ContactWidget(),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Footer
            width > 700
                ? SizedBox(height: MediaQuery.sizeOf(context).height * 0.05)
                : const SizedBox.shrink(),
            VisibilityDetector(
              key: Key('copyrights-visibility'),
              onVisibilityChanged: (info) {
                if (info.visibleFraction > 0 && !_hasShownCopyrights) {
                  setState(() {
                    _hasShownCopyrights = true;
                  });
                }
              },
              child: AnimatedOpacity(
                opacity: _hasShownCopyrights ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
                child: Center(
                  child: SelectableText(
                    '© 2025 por Victor Vaz',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
