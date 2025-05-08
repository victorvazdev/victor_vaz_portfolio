import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/models/victor_vaz.dart';
import 'package:victor_vaz_portfolio/ui/components/biography.dart';
import 'package:victor_vaz_portfolio/ui/components/identification.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HeaderSection extends StatefulWidget {
  final VictorVaz data;
  final GlobalKey sectionKey;

  const HeaderSection({
    super.key,
    required this.sectionKey,
    required this.data,
  });

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  bool _hasShown = false;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return VisibilityDetector(
      key: const Key('header-visibility'),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  width > 700
                      ? Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.2,
                          ),
                          Row(
                            children: [
                              const Identification(),
                              Expanded(
                                child: Biography(
                                  name: widget.data.name,
                                  position: widget.data.position,
                                  biography: widget.data.biography,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.2,
                          ),
                        ],
                      )
                      : Column(
                        children: [
                          const Identification(),
                          Biography(
                            name: widget.data.name,
                            position: widget.data.position,
                            biography: widget.data.biography,
                          ),
                        ],
                      ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
