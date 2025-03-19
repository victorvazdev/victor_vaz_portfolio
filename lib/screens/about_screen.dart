import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/widgets/academic_background_widget.dart';
import 'package:victor_vaz_portfolio/widgets/custom_divider_widget.dart';
import 'package:victor_vaz_portfolio/widgets/professional_experience.dart';
import 'package:victor_vaz_portfolio/widgets/who_i_am_widget.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              WhoIAmWidget(),

              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    AcademicBackgroundWidget(),

                    CustomDividerWidget(),

                    ProfessionalExperience(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
