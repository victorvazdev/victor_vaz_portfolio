import 'package:flutter/material.dart';

class HoverTitle extends StatefulWidget {
  final VoidCallback onPressed;

  const HoverTitle({super.key, required this.onPressed});

  @override
  State<HoverTitle> createState() => _HoverTitleState();
}

class _HoverTitleState extends State<HoverTitle> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedScale(
        scale: _isHovered ? 1.05 : 1.0,
        duration: Duration(milliseconds: 200),
        alignment: Alignment.center,
        child: TextButton(
          style: Theme.of(context).textButtonTheme.style,
          onPressed: widget.onPressed,
          child: SizedBox(
            width: 124,
            child: Row(
              children: [
                Icon(Icons.code, size: 32),
                const SizedBox(width: 8),
                Text('Victor Vaz', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
