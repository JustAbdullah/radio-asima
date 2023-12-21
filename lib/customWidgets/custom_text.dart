import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TextCustom extends StatelessWidget {
  final String theText;
  final double fontSizeWidth;
  final String fontFamily;
  final Color fontColor;
  FontWeight fontWeight;

  TextCustom({
    super.key,
    required this.theText,
    required this.fontSizeWidth,
    required this.fontFamily,
    required this.fontColor,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      theText.tr,
      style: TextStyle(
          height: 1.7.h,
          fontFamily: fontFamily,
          color: fontColor,
          fontSize: fontSizeWidth.sp,
          fontWeight: fontWeight),
      textAlign: TextAlign.center,
    );
  }
}
