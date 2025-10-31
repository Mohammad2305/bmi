import 'package:bmi_app/cores/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles{
  static TextStyle? titleAppBar = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle? titleButtonNav = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle? genderTitle = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.genderTextColor,
  );

  static TextStyle? heightPickerTitle = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.genderTextColor,
  );

  static TextStyle? heightInfo = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle? heightUnit = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle? result = TextStyle(
    fontSize: 64.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle? resultTitle = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: Colors.green,
  );

  static TextStyle? resultDescription = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.genderTextColor,
  );
}