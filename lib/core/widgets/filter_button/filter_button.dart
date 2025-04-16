import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';
import 'package:rifad/core/widgets/filter_button/widgets/custom_filter_show_modal_bottom_sheet.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          () => showModalBottomSheet<void>(
            clipBehavior: Clip.antiAlias,
            isScrollControlled: true,
            useSafeArea: true,
            backgroundColor: kScaffoldBackgroundColor,
            context: context,
            builder: (context) => const CustomFilterShowModalBottomSheet(),
          ),
      child: Container(
        width: 125.w,
        height: 56.h,
        decoration: BoxDecoration(
          color: kMainColor,
          border: Border.all(color: kMainColorLightColor, width: 0.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r),
            bottomLeft: Radius.circular(10.r),
          ),
        ),
        child: Row(
          spacing: 8.w,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/filter.svg', height: 24.h),
            Text(
              'تصفية',
              style: TextStyle(
                color: kScaffoldBackgroundColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                height: 1.43.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
