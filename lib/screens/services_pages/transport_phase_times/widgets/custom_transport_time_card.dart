import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rifad/core/utils/components/width.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';
import 'package:rifad/screens/services_pages/transport_phase_times/widgets/edit_and_delete_popup_menu_button.dart';

class CustomTransportTimeCard extends StatelessWidget {
  const CustomTransportTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      height: 100,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: kMainColor,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.5, color: Color(0xFFE9EAEB)),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 20,
            offset: Offset(4, 8),
          ),
        ],
      ),
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 40.w,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 5.h),
          child: Column(
            spacing: 10.h,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 6.w,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/kaaba 1.svg',
                        colorFilter: const ColorFilter.mode(
                          kMainColor,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(
                        'موسم حج 1446  هـ',
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          height: 1.43.h,
                        ),
                      ),
                    ],
                  ),
                  editAndDeletePopupMenuButton(context),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 40.w,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'المركز: ',
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            height: 1.43.h,
                          ),
                        ),
                        TextSpan(
                          text: 'مركز 4',
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            height: 1.43.h,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'رقم المركز: ',
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            height: 1.43.h,
                          ),
                        ),
                        TextSpan(
                          text: '123',
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            height: 1.43.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  W(w: 10.w),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
