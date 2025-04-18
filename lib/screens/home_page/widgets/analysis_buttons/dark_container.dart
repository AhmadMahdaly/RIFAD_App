import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class DarkContainer extends StatelessWidget {
  const DarkContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 4.w),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [kMainColor, Color(0xFF6946C4)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        shadows: const [
          BoxShadow(
            color: kShadowColor,
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 6.h,
        children: [
          SvgPicture.asset(
            'assets/svg/ion_bus-outline.svg',
            colorFilter: const ColorFilter.mode(
              kScaffoldBackgroundColor,
              BlendMode.srcIn,
            ),
          ),
          SizedBox(
            height: 46.h,
            child: Center(
              child: Text(
                'إجمالي الحافلات المطلقة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kScaffoldBackgroundColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w300,
                  height: 1.43.h,
                ),
              ),
            ),
          ),
          Text(
            '32468',
            style: TextStyle(
              color: kScaffoldBackgroundColor,
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
