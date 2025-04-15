import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/height.dart';
import 'package:rifad/core/utils/components/width.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class WelcomeToUser extends StatelessWidget {
  const WelcomeToUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40.w,
          height: 40.h,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(320.r),
          ),
          child: Image.asset('assets/images/user.jpg', fit: BoxFit.cover),
        ),
        W(w: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'أهلا بك',
              style: TextStyle(
                color: kMainColor,
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                height: 1.23.h,
              ),
            ),
            const H(h: 6),
            Text(
              'عبدالله محمد',
              style: TextStyle(
                color: kTextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
                height: 1.14.h,
              ),
            ),
          ],
        ),
        const Spacer(),
        Image.asset('assets/images/logo.png', width: 46, height: 32),
      ],
    );
  }
}
