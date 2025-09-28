import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/constants/colors.dart';
import '../../../../../cores/shared/themes/text_styles.dart';

class UnitInfo extends StatelessWidget {
  final String title;
  final String info;
  final void Function() minusOnTap;
  final void Function() addOnTap;
  const UnitInfo({super.key, required this.title, required this.info, required this.minusOnTap, required this.addOnTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.appBarColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: AppTextStyles.genderTitle),
          Text(info, style: AppTextStyles.heightInfo),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 45.w,
            children: [
              FloatingActionButton.small(
                heroTag: "minus$title",
                backgroundColor: AppColors.genderTextColor,
                onPressed: minusOnTap,
                shape: CircleBorder(),
                child: Icon(Icons.remove, color: Colors.white),
              ),
              FloatingActionButton.small(
                heroTag: "add$title",
                backgroundColor: AppColors.genderTextColor,
                onPressed: addOnTap,
                shape: CircleBorder(),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
