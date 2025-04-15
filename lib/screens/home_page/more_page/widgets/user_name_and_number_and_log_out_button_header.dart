import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/height.dart';
import 'package:rifad/core/utils/components/width.dart';

class UserNameAndNumberAndLogOutButtonHeader extends StatelessWidget {
  const UserNameAndNumberAndLogOutButtonHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40.w,
          height: 40.h,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(320.r),
          ),
          child: Image.asset('assets/images/user.jpg', fit: BoxFit.cover),
        ),
        W(w: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'عبدالله محمد',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                height: 1.14.h,
              ),
            ),
            const H(h: 8),
            Text(
              '69965709904',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.sp,
                fontWeight: FontWeight.w300,
                height: 1.14.h,
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: 32.w,
          height: 36.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x0C000000),
                blurRadius: 20,
                offset: Offset(4, 8),
              ),
            ],
          ),
          child: const Icon(Icons.power_settings_new_sharp),
        ),
      ],
    );
  }
}
