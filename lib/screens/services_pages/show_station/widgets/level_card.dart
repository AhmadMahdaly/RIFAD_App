import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6.h),
        decoration: ShapeDecoration(
          color: const Color(0xFFF5F5F5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        child: Column(
          children: [
            Text(
              'عدد الحجاج',
              style: TextStyle(
                color: kMainColor,
                fontSize: 10.sp,
                fontWeight: FontWeight.w300,
                height: 2,
              ),
            ),
            Text(
              '13789',
              style: TextStyle(
                color: kMainColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
                height: 1.43.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
