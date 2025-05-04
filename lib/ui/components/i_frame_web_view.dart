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
            ..width = '400'
            ..height = '667',
    );
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(viewType: url);
  }
}
