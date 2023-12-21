import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_asima/core/constant/app_text_styles.dart';
import 'package:radio_asima/customWidgets/custom_text.dart';

import '../../controllers/home_controller.dart';
import '../../core/constant/appcolors.dart';

class WaitScreen extends StatelessWidget {
  const WaitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    homeController.WhereISGogin();
    return Scaffold(
      backgroundColor: AppColors.theAppColorYellow,
      body: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: TextCustom(
              theText: "انتظر قليلًا",
              fontSizeWidth: 25,
              fontFamily: AppTextStyles.Marhey,
              fontColor: AppColors.whiteColorTypeOne),
        )
      ]),
    );
  }
}
