import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/widgets/certifications_list_widget.dart';
import 'package:victor_vaz_portfolio/widgets/who_i_am_widget.dart';

class CertificationsScreen extends StatelessWidget {
  const CertificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              kIsWeb ? SizedBox(height: 16) : SizedBox.shrink(),

              WhoIAmWidget(),

              SizedBox(height: 16),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: CertificationsListWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
