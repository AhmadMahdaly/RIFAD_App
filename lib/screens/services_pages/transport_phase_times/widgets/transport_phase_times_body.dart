import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/width.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';
import 'package:rifad/core/widgets/filter_button/filter_button.dart';
import 'package:rifad/core/widgets/sort_button/sort_button.dart';
import 'package:rifad/screens/services_pages/transport_phase_times/widgets/transport_data_card.dart';

class TransportPhaseTimesBody extends StatelessWidget {
  const TransportPhaseTimesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Column(
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
                    'اسم المركز',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'رقم المركز',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  W(w: 70.w),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16.sp),
                itemCount: 2,
                itemBuilder: (context, index) => const TransportDataCard(),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 32.h,

          /// تحريك العنصر للخروج من الإطار
          left: MediaQuery.of(context).size.width / 2 - 125,

          /// منتصف الشاشة
          child: const Row(children: [SortButton(), FilterButton()]),
        ),
      ],
    );
  }
}
