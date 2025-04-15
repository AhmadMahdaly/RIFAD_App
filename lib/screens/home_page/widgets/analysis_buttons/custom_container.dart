import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    required this.icon,
    required this.text,
    required this.num,
    super.key,
  });
  final Widget icon;
  final String text;
  final int num;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 4.w),
      decoration: ShapeDecoration(
        color: kMainColorLightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        spacing: 10.h,
        children: [
          icon,
          SizedBox(
            height: 46.h,
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w300,
                  height: 1.43.h,
                ),
              ),
            ),
          ),
          Text(
            num.toString(),
            style: TextStyle(
              color: kMainColor,
              fontSize: 19.sp,
              fontWeight: FontWeight.w700,
              height: 1.20.h,
            ),
          ),
        ],
      ),
    );
  }
}
