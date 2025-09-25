import 'package:bmi_app/cores/shared/constants/colors.dart';
import 'package:bmi_app/cores/shared/themes/text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarColor,
      iconTheme: IconThemeData(color: Colors.white, weight: 20),
      title: Text("BMI Calculator", style: AppTextStyles.titleAppBar,),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 56);
}
