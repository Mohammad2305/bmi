import 'package:flutter/material.dart';
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
    );
  }
}
