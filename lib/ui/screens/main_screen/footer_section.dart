import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({super.key});

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  bool _hasShown = false;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Container(
      height: width > 700 ? 128 : 64,
      decoration: BoxDecoration(
        color: Theme.of(context).appBarTheme.backgroundColor,
        border: Border(
          top: BorderSide(
            color: Theme.of(context).appBarTheme.shadowColor!,
            width: 0.1,
          ),
        ),
      ),
      child: VisibilityDetector(
        key: Key('copyrights-visibility'),
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
          child: Center(
            child: SelectableText(
              '© 2025 por Victor Vaz',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ),
      ),
    );
  }
}
