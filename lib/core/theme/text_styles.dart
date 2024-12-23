import 'package:appointment_app/core/theme/colors.dart';
import 'package:appointment_app/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font32BoldBlue = TextStyle(
      fontSize: 32.sp,
      color: ColorManger.primaryColor,
      fontWeight: FontWeightHelper.bold);

  static TextStyle font14RegularBlue = TextStyle(
      fontSize: 14.sp,
      color: ColorManger.primaryColor,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font18BoldDarkBlue = TextStyle(
      fontSize: 18.sp,
      color: ColorManger.darkBlue,
      fontWeight: FontWeightHelper.bold);

  static TextStyle font18BoldWhite = TextStyle(
      fontSize: 18.sp, color: Colors.white, fontWeight: FontWeightHelper.bold);

  static TextStyle font14RegularGrey = TextStyle(
      fontSize: 14.sp,
      color: ColorManger.greyColor,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font11RegularMoreGrey = TextStyle(
      fontSize: 11.sp,
      color: ColorManger.moreGreyColor,
      fontWeight: FontWeightHelper.regular);
}
