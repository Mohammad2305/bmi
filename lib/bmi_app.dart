import 'package:bmi_app/features/person_info/presentation/cubits/person_info_cubit.dart';
import 'package:bmi_app/features/person_info/presentation/person_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 915),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context)=>PersonInfoCubit(),
          child: PersonInfoScreen(),
        ),
      ),
    );
  }
}
