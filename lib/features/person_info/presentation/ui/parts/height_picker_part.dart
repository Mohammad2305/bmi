import 'package:bmi_app/cores/shared/themes/box_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/constants/colors.dart';
import '../../../../../cores/shared/themes/text_styles.dart';
import '../../../data/cores/models/classes/user.dart';

class HeightPickerPart extends StatefulWidget {
  final User user;

  const HeightPickerPart({super.key, required this.user});

  @override
  State<HeightPickerPart> createState() => _HeightPickerPartState();
}

class _HeightPickerPartState extends State<HeightPickerPart> {
  double height = 163.h;

  @override
  Widget build(BuildContext context) {
    widget.user.height = height;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.h),
      decoration: AppBoxDecoration.generalContainer,
      child: Column(
        spacing: 5.h,
        children: [
          Text("Height", style: AppTextStyles.heightPickerTitle),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: height.toStringAsFixed(2),
                  style: AppTextStyles.heightInfo,
                ),
                TextSpan(text: "cm", style: AppTextStyles.heightUnit),
              ],
            ),
          ),
          Slider(
            min: 0,
            max: 250,
            value: height,
            onChanged: (value) {
              setState(() {
                height = value;
              });
            },
            activeColor: AppColors.buttonNavColor,
          ),
        ],
      ),
    );
  }
}
