import 'package:bmi_app/cores/shared/constants/colors.dart';
import 'package:bmi_app/cores/shared/ui/sections/custom_app_bar.dart';
import 'package:bmi_app/cores/shared/ui/sections/custom_nav_button.dart';
import 'package:bmi_app/features/person_info/presentation/ui/sections/person_info_body.dart';
import 'package:bmi_app/features/person_result/presentation/person_result_screen.dart';
import 'package:flutter/material.dart';
import '../data/cores/models/classes/user.dart';

class PersonInfoScreen extends StatelessWidget {
  const PersonInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    User user = User(gender: "gender", weight: 70, age: 20, height: 163);

    return Scaffold(
      backgroundColor: AppColors.screenColor,
      appBar: CustomAppBar(),
      body: PersonInfoBody(user: user,),
      bottomNavigationBar: CustomNavButton(
        title: 'Calculate', 
        onTap: () {
          if(user.height>0 && user.weight>0 && user.age>0){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PersonResult(user: user,)));
          }
        },
      ),
    );
  }
}
