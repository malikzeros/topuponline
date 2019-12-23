import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/services.dart';
//#39a9a6
class KuotaHero extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return WebviewScaffold(
      url: 'https://www.kuotahero.com/',
      hidden: true,
    );
  }
}