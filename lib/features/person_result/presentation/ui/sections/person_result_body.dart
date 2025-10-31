import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/themes/box_decoration.dart';
import '../../../../../cores/shared/themes/text_styles.dart';
import '../../../data/cores/models/values/result_map.dart';

class PersonResultBody extends StatelessWidget {
  final String bmiTitle;
  final double bmiResult;
  const PersonResultBody({super.key, required this.bmiTitle, required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 25.h,
        children: [
          Text("Your Result", style: AppTextStyles.heightInfo,),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(35.sp),
              margin: EdgeInsets.only(bottom: 49.h),
              width: double.infinity,
              decoration: AppBoxDecoration.generalContainer,
              child: Column(
                spacing: 35,
                children: [
                  Text(bmiTitle, style: AppTextStyles.resultTitle,),
                  Text(bmiResult.toStringAsFixed(2), style: AppTextStyles.result,),
                  Text(bmi[bmiTitle]!, style: AppTextStyles.resultDescription, textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
