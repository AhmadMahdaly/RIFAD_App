import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';
import 'package:rifad/screens/services_pages/show_station/widgets/show_station_body.dart';
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
          'المركز 4 - رقم 123',
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
      body: const ShowStationBody(),
    );
  }
}
