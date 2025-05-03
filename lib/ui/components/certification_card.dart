import 'package:flutter/material.dart';

class CertificationCard extends StatefulWidget {
  const CertificationCard({super.key, required this.name});

  final String name;

  @override
  State<CertificationCard> createState() => _CertificationCardState();
}

class _CertificationCardState extends State<CertificationCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 400, minHeight: 80),
        child: Container(
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
                    child: SelectableText(
                      widget.name,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
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
