import 'package:bmi_app/cores/shared/themes/box_decoration.dart';
import 'package:bmi_app/cores/shared/themes/text_styles.dart';
import 'package:bmi_app/cores/shared/ui/sections/custom_app_bar.dart';
import 'package:bmi_app/features/person_info/data/cores/models/functions/bmi_calc.dart';
import 'package:bmi_app/features/person_info/presentation/person_info_screen.dart';
import 'package:bmi_app/features/person_result/data/cores/models/functions/bmi_text.dart';
import 'package:bmi_app/features/person_result/data/cores/models/values/result_map.dart';
import 'package:flutter/material.dart';
import '../../../cores/shared/constants/colors.dart';
import '../../../cores/shared/ui/sections/custom_nav_button.dart';
import '../../person_info/data/cores/models/classes/user.dart';

class PersonResult extends StatelessWidget {
  final User user;
  const PersonResult({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    double bmiResult = calcBmi(user.weight, user.height);
    String bmiTitle = determineBmiState(bmiResult);

    return Scaffold(
      backgroundColor: AppColors.screenColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 25,
          children: [
            Text("Your Result", style: AppTextStyles.heightInfo,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(35),
                margin: EdgeInsets.only(bottom: 49),
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
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomNavButton(
        title: 'Re-Calculate',
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PersonInfoScreen()));
        },
      ),
    );
  }
}