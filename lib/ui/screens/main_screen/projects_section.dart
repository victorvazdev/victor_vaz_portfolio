import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/models/victor_vaz.dart';
import 'package:victor_vaz_portfolio/ui/components/projects/project_list.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ProjectsSection extends StatefulWidget {
  final VictorVaz data;
  final GlobalKey sectionKey;

  const ProjectsSection({
    super.key,
    required this.sectionKey,
    required this.data,
  });

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  bool _hasShown = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return VisibilityDetector(
      key: const Key('projects-visibility'),
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
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment:
                  width > 700
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'Projetos',
                  style:
                      width > 700
                          ? TextStyle(
                            color:
                                Theme.of(context).textTheme.titleSmall!.color,
                            fontSize: 28,
                            fontWeight:
                                Theme.of(
                                  context,
                                ).textTheme.titleSmall!.fontWeight,
                          )
                          : Theme.of(context).textTheme.titleSmall,
                ),
                width > 700
                    ? SizedBox.shrink()
                    : SizedBox(width: double.infinity),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
                ProjectList(projectsData: widget.data.projects),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
