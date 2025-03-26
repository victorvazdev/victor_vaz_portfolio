import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Screens
import 'package:victor_vaz_portfolio/screens/main_screen.dart';

// Widgets
import 'package:victor_vaz_portfolio/widgets/academic_background_widget.dart';
import 'package:victor_vaz_portfolio/widgets/biography_widget.dart';
import 'package:victor_vaz_portfolio/widgets/certifications_list_widget.dart';
import 'package:victor_vaz_portfolio/widgets/contact_widget.dart';
import 'package:victor_vaz_portfolio/widgets/professional_experience.dart';
import 'package:victor_vaz_portfolio/widgets/header_widget.dart';

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

    if (width < 700) return const MainScreen();

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
            // Header section
            Container(
              padding: const EdgeInsets.only(left: 80, top: 10, right: 80),
              // height: MediaQuery.sizeOf(context).height * 0.7,
              key: _headerKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      kIsWeb && width > 700
                          ? SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.2,
                          )
                          : SizedBox.shrink(),

                      Row(
                        children: [
                          const HeaderWidget(),
                          const Expanded(child: BiographyWidget()),
                        ],
                      ),

                      kIsWeb && width > 700
                          ? SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.2,
                          )
                          : SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Main content card
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  Container(
                    key: _experienceKey,
                    child: const ProfessionalExperience(),
                  ),
                  Container(
                    key: _academicKey,
                    child: const AcademicBackgroundWidget(),
                  ),
                  Container(
                    key: _certificationsKey,
                    child: const CertificationsListWidget(),
                  ),
                  kIsWeb && width > 700
                      ? SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.05,
                      )
                      : SizedBox.shrink(),
                  Container(key: _contactKey, child: const ContactWidget()),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Footer
            kIsWeb && width > 700
                ? SizedBox(height: MediaQuery.sizeOf(context).height * 0.05)
                : SizedBox.shrink(),
            Center(
              child: SelectableText(
                '© 2025 por Victor Vaz',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
