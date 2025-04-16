import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/height.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';
import 'package:rifad/screens/services_pages/show_station/widgets/level_card.dart';

class ShowStationCard extends StatelessWidget {
  const ShowStationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
      width: double.infinity,
      // height: 131.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.5, color: Color(0xFFEEEEEE)),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(color: kShadowColor, blurRadius: 20, offset: Offset(4, 8)),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Row(
              spacing: 12.w,
              children: [
                Text(
                  'رقم المرحلة',
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w300,
                    height: 1.43.h,
                  ),
                ),
                Text(
                  '345',
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.25.h,
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: kMainColorLightColor),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
            child: Row(
              spacing: 12.w,
              children: [
                Text(
                  'اسم المرحلة',
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    height: 1.43.h,
                  ),
                ),
                Text(
                  'مرحلة أولى',
                  style: TextStyle(
                    color: kMainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    height: 1.43.h,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
            child: Row(
              spacing: 12.w,
              children: const [LevelCard(), LevelCard(), LevelCard()],
            ),
          ),
          const H(h: 12),
        ],
      ),
    );
  }
}
