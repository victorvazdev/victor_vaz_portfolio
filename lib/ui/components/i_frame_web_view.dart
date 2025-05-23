import 'dart:ui_web';
import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;

class IFrameWebView extends StatelessWidget {
  final String url;

  IFrameWebView({super.key, required this.url}) {
    platformViewRegistry.registerViewFactory(
      url,
      (int viewId) =>
          web.HTMLIFrameElement()
            ..src = url
            ..style.border = 'none'
            ..style.width = '100%'
            ..style.height = '100%',
    );
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(viewType: url);
  }
}
