import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class ServicesTabWidget extends StatelessWidget {
  const ServicesTabWidget({
    required this.icon,
    required this.text,
    super.key,
    this.onTap,
  });
  final Widget icon;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12.sp),
        decoration: ShapeDecoration(
          color: const Color(0xFFFCFCFC),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.50, color: Color(0xFFE9EAEB)),
            borderRadius: BorderRadius.circular(8),
          ),
          shadows: const [
            BoxShadow(color: kShadowColor, blurRadius: 4, offset: Offset(2, 2)),
          ],
        ),
        child: Row(
          spacing: 8.w,
          children: [
            icon,
            Text(
              text,
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
    );
  }
}
