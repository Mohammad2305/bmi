import 'package:flutter/material.dart';
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
        decoration: BoxDecoration(
          color: isMale? AppColors.buttonNavColor: AppColors.appBarColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
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