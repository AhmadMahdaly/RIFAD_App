import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashLogoWidget extends StatelessWidget {
  const SplashLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/text logo.png',
          width: 217.34.w,
          height: 79.03.h,
        ),
        Image.asset('assets/images/logo.png', width: 76.92.w, height: 79.03.h),
      ],
    );
  }
}
