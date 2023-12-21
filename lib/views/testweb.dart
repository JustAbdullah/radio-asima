import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:radio_asima/core/constant/app_text_styles.dart';
import 'package:radio_asima/customWidgets/custom_text.dart';

class WebTesting extends StatelessWidget {
  const WebTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://services.asima-online.net/",
              appBar: new AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                title: TextCustom(
                    theText: "موقع العاصمة اونلاين",
                    fontSizeWidth: 20,
                    fontFamily: AppTextStyles.Almarai,
                    fontColor: Colors.black),
              ),
            ),
      },
    );
  }
}
