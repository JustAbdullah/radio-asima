import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radio_asima/customWidgets/custom_text.dart';

import '../core/constant/app_text_styles.dart';
import '../core/constant/appcolors.dart';

class AboutUS extends StatelessWidget {
  const AboutUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 140.h),
          child: Align(
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextCustom(
                theText: "من نحن",
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
                      "ان شركة العاصمة اونلاين هي شركة سورية / تركية تقدم خدمات الإعلام والتسويق، انطلقت من سوريا بتاريخ نيسان 2012 ويمكن الاطلاع على تاريخها من خلال كتابة (العاصمة اونلاين) في محرك بحث غوغل، كما يمكن الاستماع لأثير راديو العاصمة اونلاين 24/7 حول العالم من خلال أي تطبيق راديو محلي أو عالمي، وعليه فإن نشاط العاصمة اونلاين دولي وتمارس نشاطها في معظم دول العالم حيث تعقد الشراكات الإعلامية والتجارية في الدول التي يتواجد فيها جمهورها وكوادرها مع احترام قوانين العمل الناظمة لكل دولة، وعليه فإن العاصمة اونلاين هي شركة مرخصة في تركيا تحت اسم Başkent Online (العاصمة اونلاين) بالرقم الضريبي: 3500688734 وهي شركة شخصية ذات صفة قانونية يملكها الإعلامي Şuayp Erdoğan (صهيب محمد اردوغان) تمارس أنشطة الإنتاج الإذاعي والتلفزيوني والفني والتجارة عبر الانترنت.",
                  fontSizeWidth: 15,
                  fontFamily: AppTextStyles.Cairo,
                  fontColor: AppColors.blackColor,
                ),
              ),
            ]),
          ),
        ),
      ),
    ));
  }
}
