import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/helpers/victor_data.dart';
import 'package:victor_vaz_portfolio/ui/components/project_card.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [...me.projects.map((e) => ProjectCard(project: e))],
    );
  }
}
