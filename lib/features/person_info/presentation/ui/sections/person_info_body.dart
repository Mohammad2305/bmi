import 'package:bmi_app/features/person_info/data/cores/models/classes/user.dart';
import 'package:bmi_app/features/person_info/presentation/ui/parts/gender_part.dart';
import 'package:bmi_app/features/person_info/presentation/ui/parts/height_picker_part.dart';
import 'package:bmi_app/features/person_info/presentation/ui/parts/unit_info_part.dart';
import 'package:flutter/material.dart';

class PersonInfoBody extends StatelessWidget {
  final User user;
  const PersonInfoBody({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 25,
        children: [
          GenderPart(user: user,),
          HeightPickerPart(user: user,),
          UnitInfoPart(user: user,),
        ],
      ),
    );
  }
}
