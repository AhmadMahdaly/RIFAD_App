import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class AnalysisCircularPercentWidget extends StatelessWidget {
  const AnalysisCircularPercentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 36.w),
      decoration: ShapeDecoration(
        color: kMainColorLightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: Column(
        spacing: 12.h,
        children: [
          CircularPercentIndicator(
            onPercentValue: (value) => 20,
            circularStrokeCap: CircularStrokeCap.round,
            radius: 80.r,
            lineWidth: 20.w,
            percent: 0.6,
            center: Column(
              spacing: 6.h,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '23679',
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.20.h,
                  ),
                ),
                Text(
                  'إجمالي الحجاج',
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    height: 1.43.h,
                  ),
                ),
              ],
            ),
            progressColor: kMainColor,
          ),

          ///
          Row(
            spacing: 10.w,
            children: [
              SvgPicture.asset(
                'assets/svg/point.svg',
                colorFilter: const ColorFilter.mode(
                  kMainColor,
                  BlendMode.srcIn,
                ),
              ),
              Text(
                'إجمالي الواصلين',
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  height: 1.43.h,
                ),
              ),
              const Spacer(),
              Text(
                '678008',
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  height: 1.20.h,
                ),
              ),
            ],
          ),

          ///
          Row(
            spacing: 10.w,
            children: [
              SvgPicture.asset(
                'assets/svg/point.svg',
                colorFilter: const ColorFilter.mode(
                  kMainColor,
                  BlendMode.srcIn,
                ),
              ),
              Text(
                'إجمالي الواصلين',
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  height: 1.43.h,
                ),
              ),
              const Spacer(),
              Text(
                '678008',
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  height: 1.20.h,
                ),
              ),
            ],
          ),

          ///
          Row(
            spacing: 10.w,
            children: [
              SvgPicture.asset(
                'assets/svg/point.svg',
                colorFilter: const ColorFilter.mode(
                  kMainColor,
                  BlendMode.srcIn,
                ),
              ),
              Text(
                'إجمالي الواصلين',
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  height: 1.43.h,
                ),
              ),
              const Spacer(),
              Text(
                '678008',
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  height: 1.20.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
