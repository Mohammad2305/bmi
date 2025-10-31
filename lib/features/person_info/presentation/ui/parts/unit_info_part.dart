import 'package:bmi_app/features/person_info/presentation/cubits/person_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/cores/models/classes/user.dart';
import '../../../data/cores/models/values/gender_list.dart';
import '../../../data/cores/models/values/unit_info_title_list.dart';
import '../widgets/unit_info.dart';

class UnitInfoPart extends StatelessWidget {
  final User user;
  const UnitInfoPart({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.h,
        crossAxisSpacing: 10.w,
      ),
      itemCount: genders.length,
      itemBuilder: (context, index) {
        user.weight = context.read<PersonInfoCubit>().weight;
        user.age = context.read<PersonInfoCubit>().age;
        return BlocBuilder<PersonInfoCubit,PersonInfoState>(
          builder: (context, state) {
            return UnitInfo(
              title: unitTitleList[index],
              info: index==0
                  ? context.read<PersonInfoCubit>().weight.toStringAsFixed(1)
                  : context.read<PersonInfoCubit>().age.toString(),
              minusOnTap: () {
                context.read<PersonInfoCubit>().minusUnit(index);
              },
              addOnTap: () {
                context.read<PersonInfoCubit>().addUnits(index);
              },
            );
          }
        );
      },
    );
  }
}