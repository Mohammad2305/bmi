import 'package:bmi_app/cores/shared/constants/colors.dart';
import 'package:bmi_app/cores/shared/themes/text_styles.dart';
import 'package:flutter/material.dart';

class CustomNavButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const CustomNavButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 100,
        color: AppColors.buttonNavColor,
        child: Center(child: Text(title, style: AppTextStyles.titleButtonNav,)),
      ),
    );
  }
}
