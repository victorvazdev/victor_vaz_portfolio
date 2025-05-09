import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/helpers/launch_url_helper.dart';
import 'package:victor_vaz_portfolio/app/models/project.dart';
import 'package:victor_vaz_portfolio/ui/components/i_frame_web_view.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin:
          width > 1000 ? const EdgeInsets.symmetric(horizontal: 48.0) : null,
      padding: EdgeInsets.all(width > 700 ? 48.0 : 16),
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
        mainAxisAlignment: MainAxisAlignment.center,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              project.url == null
                  ? SizedBox.shrink()
                  : ElevatedButton(
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
                                    Expanded(
                                      child: IFrameWebView(url: project.url!),
                                    ),
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
              SizedBox(width: 9),
              width >= 750
                  ? ElevatedButton(
                    onPressed:
                        () =>
                            launchUrlHelper(context, Uri.parse(project.video)),
                    child: Text('Ver Vídeo'),
                  )
                  : SizedBox.shrink(),
            ],
          ),
          width < 750
              ? Container(
                padding: EdgeInsets.only(top: 9.0),
                child: ElevatedButton(
                  onPressed:
                      () => launchUrlHelper(context, Uri.parse(project.video)),
                  child: Text('Ver Vídeo'),
                ),
              )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
