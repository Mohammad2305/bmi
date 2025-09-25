import 'package:flutter/material.dart';
import '../../../data/cores/models/classes/user.dart';
import '../../../data/cores/models/values/gender_list.dart';
import '../widgets/gender_button_container.dart';

class GenderPart extends StatefulWidget {
  final User user;
  const GenderPart({super.key, required this.user,});

  @override
  State<GenderPart> createState() => _GenderPartState();
}

class _GenderPartState extends State<GenderPart> {
  bool isMale = true;
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    widget.user.gender = isMale?"Male":"Female";
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
        return GenderButtonContainer(
          isMale: index == 0 ? isMale : !isMale,
          index: index,
          onTap: () {
            setState(() {
              if(activeIndex!=index){
                isMale = !isMale;
              }
              activeIndex = index ;
            });
          },
        );
      },
    );
  }
}
