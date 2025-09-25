import 'package:flutter/material.dart';
import '../../../data/cores/models/classes/user.dart';
import '../../../data/cores/models/values/gender_list.dart';
import '../../../data/cores/models/values/unit_info_title_list.dart';
import '../widgets/unit_info.dart';

class UnitInfoPart extends StatefulWidget {
  final User user;
  const UnitInfoPart({super.key, required this.user});

  @override
  State<UnitInfoPart> createState() => _UnitInfoPartState();
}

class _UnitInfoPartState extends State<UnitInfoPart> {
  double weight = 78.5;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    widget.user.weight = weight;
    widget.user.age = age;

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: genders.length,
      itemBuilder: (context, index) {
        return UnitInfo(
          title: unitTitleList[index],
          info: index==0 ? weight.toStringAsFixed(1): age.toString(),
          minusOnTap: () {
            setState(() {
              index==0 ? (weight>0 ? weight-=0.1 : null) : (age>0 ? age-- : null);
            });
          },
          addOnTap: () {
            setState(() {
              index==0 ? weight+=0.1 : age++;
            });
          },
        );
      },
    );
  }
}
