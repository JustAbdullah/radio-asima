import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constant/appcolors.dart';

// ignore: must_be_immutable
class ContainerCustom extends StatelessWidget {
  final double heigthContainer;
  final double widthContainer;
  Color colorContainer;
  double theBorderRadius;
  final Widget child;
  BoxShape boxShape;
  int anim;

  ContainerCustom(
      {super.key,
      required this.heigthContainer,
      required this.widthContainer,
      this.colorContainer = AppColors.whiteColor,
      this.theBorderRadius = 0,
      required this.child,
      this.boxShape = BoxShape.rectangle,
      this.anim = 0});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: anim),
      alignment: Alignment.center,
      height: heigthContainer.h,
      width: widthContainer.w,
      decoration: BoxDecoration(
          color: colorContainer,
          shape: boxShape,
          borderRadius: BorderRadius.circular(theBorderRadius)),
      child: child,
    );
  }
}
