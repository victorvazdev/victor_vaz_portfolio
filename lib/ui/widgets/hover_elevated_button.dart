import 'package:flutter/material.dart';

class HoverElevatedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;

  const HoverElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  State<HoverElevatedButton> createState() => _HoverElevatedButtonState();
}

class _HoverElevatedButtonState extends State<HoverElevatedButton> {
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
        child: ElevatedButton(
          style: Theme.of(context).elevatedButtonTheme.style,
          onPressed: widget.onPressed,
          child: widget.child,
        ),
      ),
    );
  }
}
