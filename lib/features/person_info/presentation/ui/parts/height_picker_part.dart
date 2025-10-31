import 'package:bmi_app/cores/shared/themes/box_decoration.dart';
import 'package:bmi_app/features/person_info/presentation/cubits/person_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../cores/shared/constants/colors.dart';
import '../../../../../cores/shared/themes/text_styles.dart';
import '../../../data/cores/models/classes/user.dart';

class HeightPickerPart extends StatelessWidget {
  final User user;
  const HeightPickerPart({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.h),
      decoration: AppBoxDecoration.generalContainer,
      child: BlocBuilder<PersonInfoCubit,PersonInfoState>(
          builder: (context, state) {
            return Column(
              spacing: 5.h,
              children: [
                Text("Height", style: AppTextStyles.heightPickerTitle),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: context.read<PersonInfoCubit>().height.toStringAsFixed(2),
                        style: AppTextStyles.heightInfo,
                      ),
                      TextSpan(text: "cm", style: AppTextStyles.heightUnit),
                    ],
                  ),
                ),
                Slider(
                  min: 0,
                  max: 250,
                  value: context.read<PersonInfoCubit>().height,
                  onChanged: (value) {
                    user.height = context.read<PersonInfoCubit>().height;
                    context.read<PersonInfoCubit>().changeHeight(value);
                  },
                  activeColor: AppColors.buttonNavColor,
                ),
              ],
            );
          }
      ),
    );
  }
}

