import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/helpers/launch_url_helper.dart';

class CertificationCard extends StatefulWidget {
  const CertificationCard({super.key, required this.name, required this.url});

  final String name;
  final String url;

  @override
  State<CertificationCard> createState() => _CertificationCardState();
}

class _CertificationCardState extends State<CertificationCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrlHelper(context, Uri.parse(widget.url)),
      borderRadius: BorderRadius.circular(8.0),
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400, minHeight: 80),
          child: Ink(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color:
                  _isHovered
                      ? Theme.of(context).hoverColor
                      : Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.library_books,
                      size: 16,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: Text(
                        widget.name,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    Icon(Icons.open_in_new),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
