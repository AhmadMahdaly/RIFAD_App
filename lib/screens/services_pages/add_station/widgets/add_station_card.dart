import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/custom_textformfield.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class AddStationCard extends StatelessWidget {
  const AddStationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'مرحلة أولى',
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  height: 1.43.h,
                ),
              ),
              SizedBox(
                width: 80.w,
                height: 38.h,
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
              SizedBox(
                width: 80.w,
                height: 38.h,
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
              SizedBox(
                width: 80.w,
                height: 38.h,
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
        ),
        const Divider(color: kMainColorLightColor),
      ],
    );
  }
}
