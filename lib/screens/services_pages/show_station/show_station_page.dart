import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/width.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';
import 'package:rifad/screens/services_pages/transport_phase_times/widgets/custom_search_bar_and_download_button.dart';

class ShowStation extends StatelessWidget {
  const ShowStation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'مركز 4 - رقم 123',
          style: TextStyle(
            color: kMainColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            height: 1.20.h,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: const CustomSearchBarAndDownloadButton(),
        ),
      ),
      body: Column(
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
                  'المرحلة',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                W(w: 40.w),
                Text(
                  'الحجاج',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'الحافلات',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'الردود',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                // W(w: 70.w),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16.sp),
              itemCount: 2,
              itemBuilder: (context, index) => const ShowStationCard(),
            ),
          ),
        ],
      ),
      // const ShowStationBody(),
    );
  }
}

class ShowStationCard extends StatelessWidget {
  const ShowStationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'المرحلة الأولى',
                style: TextStyle(
                  color: kDartTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '122567',
                style: TextStyle(
                  color: kDartTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '123',
                style: TextStyle(
                  color: kDartTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '55',
                style: TextStyle(
                  color: kDartTextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
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
