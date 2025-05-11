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
          SelectableText(
            project.name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 16.0),
          Image.asset(project.image, height: 300),
          SizedBox(height: 16.0),
          width > 700
              ? Row(
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
                                          child: IFrameWebView(
                                            url: project.url!,
                                          ),
                                        ),
                                        SizedBox(height: 16.0),
                                        Center(
                                          child: ElevatedButton(
                                            onPressed:
                                                () => Navigator.pop(context),
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
                  ElevatedButton(
                    onPressed:
                        () =>
                            launchUrlHelper(context, Uri.parse(project.video)),
                    child: Row(
                      children: [
                        Text('Ver Vídeo'),
                        SizedBox(width: 6.0),
                        Icon(Icons.open_in_new),
                      ],
                    ),
                  ),
                ],
              )
              : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                      width: 400,
                                      height: 701,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: IFrameWebView(
                                              url: project.url!,
                                            ),
                                          ),
                                          SizedBox(height: 16.0),
                                          Center(
                                            child: ElevatedButton(
                                              onPressed:
                                                  () => Navigator.pop(context),
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
                    SizedBox(height: 9),
                    ElevatedButton(
                      onPressed:
                          () => launchUrlHelper(
                            context,
                            Uri.parse(project.video),
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Ver Vídeo'),
                          SizedBox(width: 6.0),
                          Icon(Icons.open_in_new),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}
