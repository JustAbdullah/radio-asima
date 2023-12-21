import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:radio_asima/customWidgets/custom_container.dart';

import '../../controllers/home_controller.dart';
import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../core/constant/images_path.dart';
import '../../customWidgets/custom_padding.dart';
import '../../customWidgets/custom_text.dart';
import '../HomeScreen/home_screen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    homeController.makeMagic();
    return GetX<HomeController>(
        builder: (controller) => Scaffold(
              backgroundColor: Colors.white,
              body: AnimatedContainer(
                duration: const Duration(seconds: 2),
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                color: AppColors.theAppColorYellow,
                child: SingleChildScrollView(
                  child: Column(children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height / 3,
                      child: Stack(
                        children: [
                          Visibility(
                              visible: controller.getLogo.value,
                              child: PaddingCustom(
                                theTop: 70,
                                theBottom: 0,
                                theLeft: 0,
                                theRight: 0,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Image.asset(
                                    "${ImagesPath.LogoApp}",
                                    width: 700.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    PaddingCustom(
                      theTop: 80,
                      theBottom: 0,
                      theLeft: 0,
                      theRight: 0,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height / 4,
                        child: Stack(
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: AnimateList(
                                      interval: 1000.ms,
                                      effects: [FadeEffect(duration: 700.ms)],
                                      children: [
                                        TextCustom(
                                          theText: "مرحبًا بك",
                                          fontColor: AppColors.whiteColor,
                                          fontFamily: AppTextStyles.Marhey,
                                          fontSizeWidth: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        TextCustom(
                                          theText: "نُقدم لك بكل فخر",
                                          fontColor: AppColors.whiteColor,
                                          fontFamily: AppTextStyles.Marhey,
                                          fontSizeWidth: 20,
                                        ),
                                        TextCustom(
                                          theText: "راديو العاصمة اونلاين",
                                          fontColor: AppColors.theAppColorBlue,
                                          fontFamily: AppTextStyles.Marhey,
                                          fontSizeWidth: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                      ],
                                    ))),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height / 4,
                      child: Stack(
                        children: [
                          Visibility(
                            visible: controller.getTheContainer.value,
                            child: PaddingCustom(
                                theTop: 30,
                                theLeft: 0,
                                theRight: 0,
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: InkWell(
                                      onTap: () {
                                        homeController
                                            .appServices.sharedPreferences
                                            .setInt('TheWay', 2);
                                        Get.offAll(HomeScreen());
                                      },
                                      child: ContainerCustom(
                                          anim: 700,
                                          theBorderRadius: controller
                                                  .changeTheRadioisContainer
                                                  .value
                                              ? 10
                                              : 0,
                                          colorContainer: AppColors.blackColor,
                                          heigthContainer: 40,
                                          widthContainer: controller
                                                  .changeTheRadioisContainer
                                                  .value
                                              ? 200
                                              : 100,
                                          child: TextCustom(
                                              theText: "المتابعة",
                                              fontSizeWidth: 20,
                                              fontFamily: AppTextStyles.Cairo,
                                              fontColor: AppColors.whiteColor)),
                                    ))),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ));
  }
}
