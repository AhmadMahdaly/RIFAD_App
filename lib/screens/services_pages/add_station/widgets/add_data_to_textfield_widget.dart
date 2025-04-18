import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/custom_textformfield.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

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
