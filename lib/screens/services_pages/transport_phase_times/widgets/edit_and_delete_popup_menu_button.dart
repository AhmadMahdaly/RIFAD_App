import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rifad/core/utils/components/width.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';
import 'package:rifad/screens/services_pages/add_station/add_station_page.dart';
import 'package:rifad/screens/services_pages/show_station/show_station_page.dart';

PopupMenuButton<String> editAndDeletePopupMenuButton(BuildContext context) {
  return PopupMenuButton<String>(
    iconColor: kMainColor,
    constraints: BoxConstraints(minWidth: 150.w),
    color: kScaffoldBackgroundColor,
    shape: RoundedRectangleBorder(
      side: const BorderSide(color: kScaffoldBackgroundColor),
      borderRadius: BorderRadius.circular(12.r),
    ),
    onSelected: (value) {
      if (value == 'show') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ShowStationPage()),
        );
      } else if (value == 'edit') {
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddStationPage()),
        );
      }
    },
    itemBuilder: (BuildContext context) {
      return [
        PopupMenuItem(
          height: 40.h,
          value: 'show',
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/svg/view.svg',
                colorFilter: const ColorFilter.mode(
                  kMainColor,
                  BlendMode.srcIn,
                ),
              ),

              W(w: 8.w),
              Text(
                'مشاهدة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  height: 1.67.h,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          height: 40.h,
          value: 'edit',
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/svg/edit-outline.svg',
                colorFilter: const ColorFilter.mode(
                  kMainColor,
                  BlendMode.srcIn,
                ),
              ),
              W(w: 8.w),
              Text(
                'تعديل',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  height: 1.67.h,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          height: 40.h,
          value: 'add',
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/svg/add-square.svg',
                colorFilter: const ColorFilter.mode(
                  kMainColor,
                  BlendMode.srcIn,
                ),
              ),
              W(w: 8.w),
              Text(
                'إضافة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  height: 1.67.h,
                ),
              ),
            ],
          ),
        ),
      ];
    },
  );
}
