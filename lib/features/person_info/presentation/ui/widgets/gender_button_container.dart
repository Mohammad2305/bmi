import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/constants/colors.dart';
import '../../../../../cores/shared/themes/text_styles.dart';
import '../../../data/cores/models/values/gender_list.dart';

class GenderButtonContainer extends StatelessWidget {
  final bool isMale;
  final int index;
  final void Function() onTap;
  const GenderButtonContainer({super.key, required this.isMale, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: isMale? AppColors.buttonNavColor: AppColors.appBarColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: genders[index].genderIcon),
            Text(
              genders[index].gender,
              style: AppTextStyles.genderTitle?.copyWith(color: isMale ? Colors.white :  AppColors.genderTextColor,),
            ),
          ],
        ),
      ),
    );
  }
}