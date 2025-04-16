import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/custom_textformfield.dart';
import 'package:rifad/core/utils/components/height.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class AddStationCard extends StatelessWidget {
  const AddStationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
      width: MediaQuery.of(context).size.width,
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
            child: const AddDataToTextFieldWidget(),
          ),
          const H(h: 12),
        ],
      ),
    );
  }
}

class AddDataToTextFieldWidget extends StatelessWidget {
  const AddDataToTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 12.w,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 5.h,
          children: [
            Text(
              'عدد الحجاج',
              style: TextStyle(
                color: kMainColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                height: 2.h,
              ),
            ),
            SizedBox(
              width: 100.w,
              child: CustomTextformfield(
                textDirection: TextDirection.rtl,
                fontSize: 11,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 0,
                ),
                text: 'العدد',
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 5.h,
          children: [
            Text(
              'عدد الحافلات',
              style: TextStyle(
                color: kMainColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                height: 2.h,
              ),
            ),
            SizedBox(
              width: 100.w,
              child: CustomTextformfield(
                textDirection: TextDirection.rtl,
                fontSize: 11,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 0,
                ),
                text: 'العدد',
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 5.h,
          children: [
            Text(
              'عدد الردود',
              style: TextStyle(
                color: kMainColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                height: 2.h,
              ),
            ),
            SizedBox(
              width: 100.w,
              child: CustomTextformfield(
                textDirection: TextDirection.rtl,
                fontSize: 11,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 0,
                ),
                text: 'العدد',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
