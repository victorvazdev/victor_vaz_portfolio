import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/screens/main_screen.dart';
import 'package:victor_vaz_portfolio/widgets/academic_background_widget.dart';
import 'package:victor_vaz_portfolio/widgets/biography_widget.dart';
import 'package:victor_vaz_portfolio/widgets/certifications_list_widget.dart';
import 'package:victor_vaz_portfolio/widgets/contact_widget.dart';
import 'package:victor_vaz_portfolio/widgets/custom_divider_widget.dart';
import 'package:victor_vaz_portfolio/widgets/professional_experience.dart';
import 'package:victor_vaz_portfolio/widgets/who_i_am_widget.dart';

class WebMainScreen extends StatefulWidget {
  const WebMainScreen({super.key});

  @override
  State<WebMainScreen> createState() => _WebMainScreenState();
}

class _WebMainScreenState extends State<WebMainScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _academicKey = GlobalKey();
  final GlobalKey _certificationsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollToExperience() {
    Scrollable.ensureVisible(
      _experienceKey.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToAcademic() {
    Scrollable.ensureVisible(
      _academicKey.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToCertifications() {
    Scrollable.ensureVisible(
      _certificationsKey.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToContact() {
    Scrollable.ensureVisible(
      _contactKey.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return width < 700
        ? MainScreen()
        : Scaffold(
          appBar: AppBar(
            actions: [
              TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: _scrollToExperience,
                child:
                    width < 700
                        ? Text(
                          'E. Profissional',
                          style: Theme.of(context).textTheme.headlineMedium,
                        )
                        : Text(
                          'Experiência Profissional',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
              ),

              TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: _scrollToAcademic,
                child:
                    width < 700
                        ? Text(
                          'F. Acadêmica',
                          style: Theme.of(context).textTheme.headlineMedium,
                        )
                        : Text(
                          'Formação Acadêmica',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
              ),

              TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: _scrollToCertifications,
                child: Text(
                  'Certificações',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),

              TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: _scrollToContact,
                child: Text(
                  'Contato',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),

              SizedBox(width: 64),
            ],
          ),
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 80, top: 10, right: 80),
                  child: Row(
                    children: [
                      WhoIAmWidget(),
                      Expanded(child: SizedBox(child: BiographyWidget())),
                    ],
                  ),
                ),

                SizedBox(height: 8),

                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(9.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        key: _experienceKey,
                        child: ProfessionalExperience(),
                      ),

                      CustomDividerWidget(),

                      Container(
                        key: _academicKey,
                        child: AcademicBackgroundWidget(),
                      ),

                      Container(
                        key: _certificationsKey,
                        child: CertificationsListWidget(),
                      ),

                      CustomDividerWidget(),

                      Container(key: _contactKey, child: ContactWidget()),
                    ],
                  ),
                ),

                SizedBox(height: 32),
                Center(
                  child: SelectableText(
                    '© 2025 por Victor Vaz',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        );
  }
}
