import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/models/victor_vaz.dart';
import 'package:victor_vaz_portfolio/app/view_models/victor_vaz_data_view_model.dart';

// Widgets
import 'package:victor_vaz_portfolio/ui/components/hover_elevated_button.dart';
import 'package:victor_vaz_portfolio/ui/components/hover_title.dart';
import 'package:victor_vaz_portfolio/ui/components/theme_selector.dart';
import 'package:victor_vaz_portfolio/ui/screens/main_screen/academic_section.dart';
import 'package:victor_vaz_portfolio/ui/screens/main_screen/certifications_section.dart';
import 'package:victor_vaz_portfolio/ui/screens/main_screen/contact_section.dart';
import 'package:victor_vaz_portfolio/ui/screens/main_screen/experience_section.dart';
import 'package:victor_vaz_portfolio/ui/screens/main_screen/footer_section.dart';
import 'package:victor_vaz_portfolio/ui/screens/main_screen/header_section.dart';
import 'package:victor_vaz_portfolio/ui/screens/main_screen/projects_section.dart';

class MainScreen extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeNotifier;

  const MainScreen({super.key, required this.themeNotifier});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ScrollController _scrollController = ScrollController();

  final GlobalKey _headerKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _academicKey = GlobalKey();
  final GlobalKey _certificationsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  final VictorVazDataViewModel victorVazDataViewModel =
      VictorVazDataViewModel();

  VictorVaz _data = VictorVaz.empty();

  bool _wasTheDataRequested = false;

  void _cycleTheme(ThemeMode value) {
    switch (value) {
      case ThemeMode.system:
        widget.themeNotifier.value = ThemeMode.system;
        break;
      case ThemeMode.light:
        widget.themeNotifier.value = ThemeMode.light;
        break;
      case ThemeMode.dark:
        widget.themeNotifier.value = ThemeMode.dark;
        break;
    }
  }

  void _scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void handleClick(String value) {
    switch (value) {
      case 'Projetos':
        _scrollTo(_projectsKey);
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

  Future<VictorVaz> requestData() async {
    if (!_wasTheDataRequested) {
      _data = await victorVazDataViewModel.getData();
      _wasTheDataRequested = true;
    }
    setState(() {});
    return _data;
  }

  @override
  void initState() {
    super.initState();
    requestData();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title:
            width < 1000
                ? null
                : HoverTitle(onPressed: () => _scrollTo(_headerKey)),
        titleSpacing: width > 950 ? 72 : 32,
        leading:
            width < 1000
                ? HoverTitle(onPressed: () => _scrollTo(_headerKey))
                : null,
        leadingWidth: width < 1000 ? 200 : null,
        actionsPadding: EdgeInsets.only(right: width > 1000 ? 72 : 32),
        actions:
            width < 800
                ? <Widget>[
                  Row(
                    children: [
                      ThemeSelector(onThemeSelected: _cycleTheme),
                      PopupMenuButton(
                        tooltip: 'Menu',
                        color: Theme.of(context).scaffoldBackgroundColor,
                        icon: Icon(
                          Icons.menu,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        onSelected: handleClick,
                        itemBuilder: (context) {
                          return {
                            'Projetos',
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
                    ],
                  ),
                ]
                : <Widget>[
                  TextButton(
                    style: Theme.of(context).textButtonTheme.style,
                    onPressed: () => _scrollTo(_projectsKey),
                    child: Text('Projetos'),
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

                  ThemeSelector(onThemeSelected: _cycleTheme),
                ],
      ),
      body:
          _wasTheDataRequested
              ? SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Column(
                        children: [
                          HeaderSection(
                            sectionKey: _headerKey,
                            data: victorVazDataViewModel.data,
                          ),
                          ProjectsSection(
                            sectionKey: _projectsKey,
                            data: victorVazDataViewModel.data,
                          ),
                          ExperienceSection(
                            sectionKey: _experienceKey,
                            data: victorVazDataViewModel.data,
                          ),
                          AcademicSection(
                            sectionKey: _academicKey,
                            data: victorVazDataViewModel.data,
                          ),
                          CertificationsSection(
                            sectionKey: _certificationsKey,
                            data: victorVazDataViewModel.data,
                          ),
                          width > 700
                              ? SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.05,
                              )
                              : const SizedBox.shrink(),
                          ContactSection(
                            sectionKey: _contactKey,
                            data: victorVazDataViewModel.data,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    // Footer
                    width > 700
                        ? SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.05,
                        )
                        : const SizedBox.shrink(),
                    FooterSection(),
                  ],
                ),
              )
              : Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              ),
    );
  }
}
