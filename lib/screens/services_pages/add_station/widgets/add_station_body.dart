import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/custom_textformfield.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class AddStationBody extends StatelessWidget {
  const AddStationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 12.h, left: 16.w, right: 16.w),
          height: 60.h,
          padding: EdgeInsets.all(10.sp),
          decoration: ShapeDecoration(
            color: kMainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8.r),
                topLeft: Radius.circular(8.r),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'اسم المرحلة',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'عدد الحجاج',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'عدد الحافلات',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'عدد الردود',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(16.sp),
            itemCount: 2,
            itemBuilder: (context, index) => const AddStationCard(),
          ),
        ),
        // AddStationCard()
      ],
    );
  }
}

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
