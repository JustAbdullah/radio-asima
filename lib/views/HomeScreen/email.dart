import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:radio_asima/customWidgets/custom_container.dart';
import 'package:radio_asima/customWidgets/custom_text.dart';
import 'package:radio_asima/views/HomeScreen/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';

class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
              onTap: () {
                Get.to(HomeScreen());
              },
              child: Image.asset(
                  "android/assets/images/icons8-more-than-100.png")),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 240.h),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextCustom(
                        theText: "التواصل الرسمي",
                        fontSizeWidth: 25,
                        fontFamily: AppTextStyles.Marhey,
                        fontColor: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: TextCustom(
                          theText:
                              "تستطيع التواصل معنا عن طريق الإيميل الرسمي,,للتواصل أضغط على الزر التالي",
                          fontSizeWidth: 15,
                          fontFamily: AppTextStyles.Cairo,
                          fontColor: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 140.h,
                      ),
                      InkWell(
                        onTap: () async {
                          String email =
                              Uri.encodeComponent("info@asima-online.net");
                          String subject = Uri.encodeComponent(
                              "قم بتغيير العنوان بما يناسبك");
                          String body = Uri.encodeComponent(
                              "مرحبًا,,الرجاء القيام بإدخال طلبك هنا(قم بتعديل الرسالة)");
                          print(subject); //output: Hello%20Flutter
                          Uri mail = Uri.parse(
                              "mailto:$email?subject=$subject&body=$body");
                          if (await launchUrl(mail)) {
                            //email app opened
                          } else {
                            //email app is not opened
                          }
                        },
                        child: ContainerCustom(
                          theBorderRadius: 5,
                          heigthContainer: 35.h,
                          widthContainer: 190.w,
                          colorContainer: AppColors.balckColorTypeThree,
                          child: TextCustom(
                              theText: "التواصل",
                              fontSizeWidth: 15,
                              fontFamily: AppTextStyles.Cairo,
                              fontWeight: FontWeight.w500,
                              fontColor: AppColors.whiteColor),
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ));
  }
}
