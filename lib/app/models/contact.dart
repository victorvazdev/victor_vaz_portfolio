import 'package:flutter/material.dart';

class Contact {
  String text;
  String link;
  String? semanticLabel;
  IconData? icon;
  String? asset;

  Contact({
    required this.text,
    required this.link,
    this.semanticLabel,
    this.icon,
    this.asset,
  }) : assert(
         icon != null || asset != null,
         'Either icon or asset must be non-null.',
       ),
       assert(
         (icon != null) ^ (asset != null),
         'Either icon or asset must be non-null, but not both.',
       );
}
