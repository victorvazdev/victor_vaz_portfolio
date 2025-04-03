import 'package:flutter/material.dart';

// Data
import 'package:victor_vaz_portfolio/data/victor_data.dart';

// Widgets
import 'package:victor_vaz_portfolio/ui/widgets/academic_background_widget.dart';
import 'package:victor_vaz_portfolio/ui/widgets/biography_widget.dart';
import 'package:victor_vaz_portfolio/ui/widgets/certifications_list_widget.dart';
import 'package:victor_vaz_portfolio/ui/widgets/contact/contact_widget.dart';
import 'package:victor_vaz_portfolio/ui/widgets/hover_elevated_button.dart';
import 'package:victor_vaz_portfolio/ui/widgets/hover_title.dart';
import 'package:victor_vaz_portfolio/ui/widgets/professional_experience.dart';
import 'package:victor_vaz_portfolio/ui/widgets/header_widget.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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

  void handleClick(String value) {
    switch (value) {
      case 'E. Profissional':
        _scrollTo(_experienceKey);
        break;
      case 'F. Acadêmica':
        _scrollTo(_academicKey);
        break;
      case 'Certificações':
        _scrollTo(_certificationsKey);
        break;
      case 'Contato':
        _scrollTo(_contactKey);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title:
            width < 800
                ? null
                : HoverTitle(onPressed: () => _scrollTo(_headerKey)),
        titleSpacing: width > 950 ? 72 : 32,
        leading:
            width < 800
                ? HoverTitle(onPressed: () => _scrollTo(_headerKey))
                : null,
        leadingWidth: width < 800 ? 200 : null,
        actionsPadding: EdgeInsets.only(right: width > 1000 ? 72 : 32),
        actions:
            width < 800
                ? <Widget>[
                  PopupMenuButton(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    icon: Icon(
                      Icons.menu,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onSelected: handleClick,
                    itemBuilder: (context) {
                      return {
                        'E. Profissional',
                        'F. Acadêmica',
                        'Certificações',
                        'Contato',
                      }.map((choice) {
                        return PopupMenuItem<String>(
                          value: choice,
                          child: Text(choice),
                        );
                      }).toList();
                    },
                  ),
                ]
                : <Widget>[
                  TextButton(
                    style: Theme.of(context).textButtonTheme.style,
                    onPressed: () => _scrollTo(_experienceKey),
                    child: Text(
                      width < 900
                          ? 'E. Profissional'
                          : 'Experiência Profissional',
                    ),
                  ),
                  TextButton(
                    style: Theme.of(context).textButtonTheme.style,
                    onPressed: () => _scrollTo(_academicKey),
                    child: Text(
                      width < 900 ? 'F. Acadêmica' : 'Formação Acadêmica',
                    ),
                  ),
                  TextButton(
                    style: Theme.of(context).textButtonTheme.style,
                    onPressed: () => _scrollTo(_certificationsKey),
                    child: const Text('Certificações'),
                  ),
                  HoverElevatedButton(
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
                                            Expanded(
                                              child: BiographyWidget(
                                                name: me.name,
                                                position: me.position,
                                                biography: me.biography,
                                              ),
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
                                        BiographyWidget(
                                          name: me.name,
                                          position: me.position,
                                          biography: me.biography,
                                        ),
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
                        child: AcademicBackgroundWidget(
                          graduations: me.graduations,
                        ),
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
                        child: CertificationsListWidget(
                          certifications: me.certifications,
                        ),
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
                        child: ContactWidget(
                          email: me.email,
                          phone: me.phone,
                          linkedinUsername: me.linkedin,
                          githubUsername: me.github,
                          local: me.location,
                        ),
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
