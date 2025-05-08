import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:victor_vaz_portfolio/app/models/project.dart';
import 'package:victor_vaz_portfolio/ui/components/projects/project_card.dart';

class ProjectList extends StatefulWidget {
  final List<Project> projectsData;
  const ProjectList({super.key, required this.projectsData});

  @override
  State<ProjectList> createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  final PageController _controller = PageController(viewportFraction: 1.00);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final next = _controller.page?.round() ?? 0;
      if (_currentPage != next) {
        setState(() => _currentPage = next);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: width > 1000 ? 740 : 815,
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  final prevPage =
                      _currentPage > 0
                          ? _currentPage - 1
                          : widget.projectsData.length - 1;
                  _controller.animateToPage(
                    prevPage,
                    duration: const Duration(microseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: widget.projectsData.length,
                  itemBuilder:
                      (context, index) =>
                          ProjectCard(project: widget.projectsData[index]),
                ),
              ),
              IconButton(
                onPressed: () {
                  final nextPage =
                      _currentPage < widget.projectsData.length - 1
                          ? _currentPage + 1
                          : 0;
                  _controller.animateToPage(
                    nextPage,
                    duration: const Duration(microseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SmoothPageIndicator(
          controller: _controller,
          count: widget.projectsData.length,
          effect: WormEffect(
            dotHeight: 10,
            dotWidth: 10,
            spacing: 8,
            activeDotColor: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
