import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/models/project.dart';
import 'package:victor_vaz_portfolio/ui/components/i_frame_web_view.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      // margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(48.0),
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.backgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Theme.of(
              context,
            ).appBarTheme.shadowColor!.withValues(alpha: 0.1),
            spreadRadius: 0,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(project.image, width: 200),
          SizedBox(height: 5),
          width > 700 ? SizedBox(height: 16) : SizedBox.shrink(),
          SelectableText(
            project.name,
            style:
                width > 700
                    ? TextStyle(
                      color: Theme.of(context).textTheme.titleSmall!.color,
                      fontSize: 24,
                      fontWeight:
                          Theme.of(context).textTheme.titleSmall!.fontWeight,
                    )
                    : Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(height: 5),
          width > 700 ? SizedBox(height: 16) : SizedBox.shrink(),
          SelectableText(
            project.description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 5),
          width > 700 ? SizedBox(height: 16) : SizedBox.shrink(),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: true,
                builder:
                    (context) => Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        width: width > 600 ? 400 : 270,
                        height: 701,
                        child: Column(
                          children: [
                            Expanded(child: IFrameWebView(url: project.url)),
                            SizedBox(height: 16.0),
                            Center(
                              child: ElevatedButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('Fechar'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
              );
            },
            child: Text('Executar App'),
          ),
        ],
      ),
    );
  }
}
