import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:radio_asima/core/constant/app_text_styles.dart';
import 'package:radio_asima/core/constant/images_path.dart';
import 'package:radio_asima/customWidgets/custom_container.dart';
import 'package:radio_asima/customWidgets/custom_padding.dart';
import 'package:radio_asima/customWidgets/custom_text.dart';
import 'package:radio_asima/views/HomeScreen/email.dart';
import 'package:radio_asima/views/about_us.dart';

import '../../controllers/home_controller.dart';
import '../../core/constant/appcolors.dart';
import '../testings/radioScreen/radio_screen.dart';
import '../testweb.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    homeController.onInit();
    return Scaffold(
        backgroundColor: AppColors.whiteColorTypeOne,
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: PaddingCustom(
                  child: Column(
                    children: [
                      ContainerCustom(
                          colorContainer: AppColors.whiteColor,
                          heigthContainer: 72,
                          widthContainer: MediaQuery.sizeOf(context).width,
                          child: PaddingCustom(
                              theTop: 7.h,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15.w,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextCustom(
                                      theText: "راديو العاصمة اونلاين",
                                      fontSizeWidth: 20,
                                      fontFamily: AppTextStyles.Marhey,
                                      fontColor: AppColors.blackColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Image.asset(
                                      "${ImagesPath.LogoApp}",
                                      width: 120.w,
                                      fit: BoxFit.cover,
                                    )
                                  ],
                                ),
                              ))),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        children: [
                          Lottie.asset("${ImagesPath.radioTwo}",
                              width: 100.w, height: 80.h, fit: BoxFit.cover),
                          SizedBox(
                            height: 10,
                          ),
                          TextCustom(
                            theText: "الإذاعة",
                            fontSizeWidth: 35,
                            fontFamily: AppTextStyles.Marhey,
                            fontColor: AppColors.theAppColorYellow,
                            fontWeight: FontWeight.bold,
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 37.w),
                              child: TextCustom(
                                  theText:
                                      "اذاعة العاصمة اونلاين 2021-2024 انطلقنا منذ 13 عاما كإذاعة تحاكي اهتمامات العرب  في كل مكان حول العالم.قم بالإستماع الان",
                                  fontSizeWidth: 15.5,
                                  fontFamily: AppTextStyles.Cairo,
                                  fontColor: Colors.black)),
                          SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(RadioScreenTestring());
                            },
                            child: Lottie.asset("${ImagesPath.play}",
                                width: 100.w,
                                height: 70.h,
                                fit: BoxFit.contain),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.w),
                        child: ContainerCustom(
                            colorContainer: AppColors.whiteColorTypeOne,
                            heigthContainer: 150,
                            widthContainer: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(children: [
                                  Lottie.asset("${ImagesPath.Ourservices}",
                                      width: 100.w,
                                      height: 70.h,
                                      fit: BoxFit.contain),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextCustom(
                                    theText: "خدماتنا المختلفة",
                                    fontSizeWidth: 15,
                                    fontFamily: AppTextStyles.Marhey,
                                    fontColor: AppColors.blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(WebTesting());
                                    },
                                    child: ContainerCustom(
                                      theBorderRadius: 5,
                                      heigthContainer: 35.h,
                                      widthContainer: 100.w,
                                      colorContainer:
                                          AppColors.balckColorTypeThree,
                                      child: TextCustom(
                                          theText: "الإطلاع",
                                          fontSizeWidth: 15,
                                          fontFamily: AppTextStyles.Cairo,
                                          fontWeight: FontWeight.w500,
                                          fontColor: AppColors.whiteColor),
                                    ),
                                  )
                                ]),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(children: [
                                  Lottie.asset("${ImagesPath.Email}",
                                      width: 100.w,
                                      height: 70.h,
                                      fit: BoxFit.contain),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextCustom(
                                    theText: "التواصل الرسمي",
                                    fontSizeWidth: 15,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontColor: AppColors.blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      Get.to(Email());
                                    },
                                    child: ContainerCustom(
                                      theBorderRadius: 5,
                                      heigthContainer: 35.h,
                                      widthContainer: 100.w,
                                      colorContainer:
                                          AppColors.balckColorTypeThree,
                                      child: TextCustom(
                                          theText: "الإطلاع",
                                          fontSizeWidth: 15,
                                          fontFamily: AppTextStyles.Cairo,
                                          fontWeight: FontWeight.w500,
                                          fontColor: AppColors.whiteColor),
                                    ),
                                  )
                                ]),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Column(children: [
                                  Lottie.asset("${ImagesPath.info}",
                                      width: 100.w,
                                      height: 70.h,
                                      fit: BoxFit.contain),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextCustom(
                                    theText: "من نحن",
                                    fontSizeWidth: 15,
                                    fontFamily: AppTextStyles.Marhey,
                                    fontColor: AppColors.blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(AboutUS());
                                    },
                                    child: ContainerCustom(
                                      theBorderRadius: 5,
                                      heigthContainer: 35.h,
                                      widthContainer: 100.w,
                                      colorContainer:
                                          AppColors.balckColorTypeThree,
                                      child: TextCustom(
                                          theText: "الإطلاع",
                                          fontSizeWidth: 15,
                                          fontFamily: AppTextStyles.Cairo,
                                          fontWeight: FontWeight.w500,
                                          fontColor: AppColors.whiteColor),
                                    ),
                                  )
                                ])
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 0.h,
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: PaddingCustom(
                              theTop: 0,
                              theBottom: 0,
                              child: InkWell(
                                  onTap: () async {
                                    /* var whatsappAndroid =
                                Uri.parse("https://wa.link/djvzmx");
        
                            await launchUrl(whatsappAndroid);*/
                                    homeController.whatsapp();
                                  },
                                  child: Lottie.asset("${ImagesPath.WHATSUPP}",
                                      width: 150.w,
                                      height: 80.h,
                                      fit: BoxFit.cover)))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
