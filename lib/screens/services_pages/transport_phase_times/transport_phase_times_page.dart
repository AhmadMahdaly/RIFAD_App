import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';
import 'package:rifad/screens/services_pages/transport_phase_times/widgets/custom_search_bar_and_download_button.dart';
import 'package:rifad/screens/services_pages/transport_phase_times/widgets/transport_phase_times_body.dart';

/// حصص مراحل النقل
class TransportPhaseTimesPage extends StatelessWidget {
  const TransportPhaseTimesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        toolbarHeight: 100.h,
        title: Text(
          'حصص مراحل النقل',
          style: TextStyle(
            color: kMainColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            height: 1.20.h,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svg/help_circle_outline.svg',
              colorFilter: const ColorFilter.mode(kMainColor, BlendMode.srcIn),
            ),
          ),
        ],

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12.h,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  spacing: 6.w,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/kaaba 1.svg',
                      colorFilter: const ColorFilter.mode(
                        kGrayColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    Text(
                      'موسم حج 1446 هـ',
                      style: TextStyle(
                        color: kGrayColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.25.h,
                      ),
                    ),
                  ],
                ),
              ),
              const CustomSearchBarAndDownloadButton(),
            ],
          ),
        ),
      ),
      body: const TransportPhaseTimesBody(),
    );
  }
}
