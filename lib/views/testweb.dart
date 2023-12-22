import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:get/get.dart';
import 'package:radio_asima/core/constant/app_text_styles.dart';
import 'package:radio_asima/customWidgets/custom_text.dart';

import 'HomeScreen/home_screen.dart';

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
                leading: InkWell(
                    onTap: () {
                      Get.offAll(HomeScreen());
                    },
                    child: SizedBox(
                      width: 20.w,
                      height: 20.h,
                      child: Image.asset(
                        "android/assets/images/icons8-back-64.png",
                        width: 40.w,
                        height: 40.h,
                      ),
                    )),
              ),
            ),
      },
    );
  }
}
