import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rifad/core/utils/components/custom_textformfield.dart';
import 'package:rifad/core/utils/components/width.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class CustomSearchBarAndDownloadButton extends StatelessWidget {
  const CustomSearchBarAndDownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12.w,
      children: [
        W(w: 4.w),
        Expanded(
          child: CustomTextformfield(
            textDirection: TextDirection.rtl,
            text: 'ابحث هنا',
            contentPadding: EdgeInsets.zero,
            icon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svg/search.svg',
                colorFilter: const ColorFilter.mode(
                  kMainColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 46.w,
          height: 46.h,
          padding: const EdgeInsets.all(5.16),
          decoration: ShapeDecoration(
            color: const Color(0xFF6400CA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svg/download.svg',
              height: 30.h,
              fit: BoxFit.none,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        W(w: 4.w),
      ],
    );
  }
}
