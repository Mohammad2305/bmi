import 'package:bmi_app/features/person_info/presentation/cubits/person_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../data/cores/models/classes/user.dart';
import '../../../data/cores/models/values/gender_list.dart';
import '../widgets/gender_button_container.dart';

class GenderPart extends StatelessWidget {
  final User user;
  const GenderPart({super.key, required this.user,});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonInfoCubit,PersonInfoState>(
        builder: (context, state) {
          return GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 10.w,
                mainAxisExtent: 200.w
            ),
            itemCount: genders.length,
            itemBuilder: (context, index) {
              user.gender = context.read<PersonInfoCubit>().isMale?"Male":"Female";
              return GenderButtonContainer(
                isMale: index == 0 ? context.read<PersonInfoCubit>().isMale : !context.read<PersonInfoCubit>().isMale,
                index: index,
                onTap: () {
                  context.read<PersonInfoCubit>().changeGender(index);
                },
              );
            },
          );
        }
    );
  }
}
