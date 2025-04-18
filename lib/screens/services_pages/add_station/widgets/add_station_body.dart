import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/screens/services_pages/add_station/widgets/add_station_card.dart';
import 'package:rifad/screens/services_pages/add_station/widgets/add_station_table_head_title.dart';

class AddStationBody extends StatelessWidget {
  const AddStationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AddStationTableHeadTitle(),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(16.sp),
            itemCount: 2,
            itemBuilder: (context, index) => const AddStationCard(),
          ),
        ),
      ],
    );
  }
}
