import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/screens/services_pages/show_station/widgets/show_station_card.dart';
import 'package:rifad/screens/services_pages/show_station/widgets/station_table_head_title.dart';

class ShowStationBody extends StatelessWidget {
  const ShowStationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const StationTableHeadTitle(),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(16.sp),
            itemCount: 2,
            itemBuilder: (context, index) => const ShowStationCard(),
          ),
        ),
      ],
    );
  }
}
