import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/utils/constants/colors_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    this.isActive = true,
    this.onTap,
    super.key,
    this.padding = 0,
  });

  final String text;
  final bool isActive;
  final void Function()? onTap;
  final int padding;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? InkWell(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: padding.w),
            alignment: Alignment.center,
            width: double.infinity,
            height: 62.h,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(
                begin: Alignment(1, 0.50),
                end: Alignment(0, 0.50),
                colors: [kSecondaryColor, kMainColor],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 21.sp,
                fontWeight: FontWeight.w300,
                height: 1.35.h,
              ),
            ),
          ),
        )
        : InkWell(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: padding.w),
            alignment: Alignment.center,
            width: double.infinity,
            height: 62.h,
            decoration: ShapeDecoration(
              color: kScaffoldBackgroundColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: kTextColor, width: 1.w),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              text,
              style: TextStyle(
                color: kTextColor,
                fontSize: 21.sp,
                fontWeight: FontWeight.w300,
                height: 1.35.h,
              ),
            ),
          ),
        );
  }
}
