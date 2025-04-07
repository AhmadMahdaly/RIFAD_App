import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/utils/constants/colors_constants.dart';

class TitleOfWelcomePage extends StatelessWidget {
  const TitleOfWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'تسجيل الدخول لحسابك',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: kTextColor,
        fontSize: 17.sp,
        fontWeight: FontWeight.w300,
        height: 1.20.h,
      ),
    );
  }
}
