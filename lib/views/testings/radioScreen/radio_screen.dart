import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:radio_asima/controllers/home_controller.dart';
import 'package:radio_asima/core/constant/appcolors.dart';
import 'package:radio_asima/core/constant/images_path.dart';
import 'package:radio_asima/customWidgets/custom_padding.dart';
import 'package:radio_player/radio_player.dart';

import '../../../core/constant/app_text_styles.dart';
import '../../../customWidgets/custom_container.dart';
import '../../../customWidgets/custom_text.dart';
import '../../HomeScreen/home_screen.dart';

class RadioScreenTestring extends StatefulWidget {
  const RadioScreenTestring({super.key});

  @override
  State<RadioScreenTestring> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreenTestring> {
  HomeController homeController = Get.put(HomeController());
  RadioPlayer _radioPlayer = RadioPlayer();
  bool isPlaying = false;
  List<String>? metadata;

  @override
  void initState() {
    super.initState();

    if (homeController.playRadio.value == false) {
      initRadioPlayer();
    } else {}
  }

  void initRadioPlayer() {
    _radioPlayer.setChannel(
      title: 'Asima Radio',
      url: "https://asima.out.airtime.pro/asima_a",
      imagePath: '"android/assets/images/Asima Radio Logo 01-02.png",',
    );

    _radioPlayer.stateStream.listen((value) {
      setState(() {
        isPlaying = value;
      });
    });

    _radioPlayer.metadataStream.listen((value) {
      setState(() {
        metadata = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                Get.to(HomeScreen());
                              },
                              child: Image.asset(
                                  "android/assets/images/icons8-more-than-100.png")),
                          Image.asset(
                            "${ImagesPath.LogoApp}",
                            width: 120.w,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ))),
            SizedBox(
              height: 40.h,
            ),
            PaddingCustom(
                theTop: 00,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset("${ImagesPath.LogoRadio}"),
                )),
            SizedBox(
              height: 40.h,
            ),
            PaddingCustom(
                theBottom: 00,
                child: Align(
                  alignment: Alignment.center,
                  child: Lottie.asset("${ImagesPath.radioTwo}",
                      width: 120.w, height: 100.h, fit: BoxFit.cover),
                )),
            SizedBox(
              height: 100.h,
            ),
            PaddingCustom(
                theBottom: 00,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GetX<HomeController>(
                      builder: (controller) => InkWell(
                        onTap: () {
                          if (controller.playRadio.value == true) {
                            controller.playRadio.value = false;
                            _radioPlayer.pause();

                            setState(() {});
                          } else {
                            controller.playRadio.value = true;
                            _radioPlayer.play();
                            setState(() {});
                          }
                        },
                        child: ContainerCustom(
                          theBorderRadius: 5,
                          heigthContainer: 35.h,
                          widthContainer: 200.w,
                          colorContainer: controller.playRadio.value
                              ? Colors.red
                              : AppColors.theAppColorYellow,
                          child: TextCustom(
                            theText: controller.playRadio.value
                                ? " الايقاف"
                                : "التشغيل",
                            fontSizeWidth: 20,
                            fontFamily: AppTextStyles.Cairo,
                            fontColor: AppColors.whiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ))),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 30.h,
            ),
          ]),
        ),
      ),
    );
  }
}
