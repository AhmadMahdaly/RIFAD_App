import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/custom_button.dart';
import 'package:rifad/screens/services_pages/add_station/widgets/add_station_body.dart';

class AddStationPage extends StatelessWidget {
  const AddStationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const AddStationBody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.sp),
        child: const CustomButton(text: 'حفظ'),
      ),
    );
  }
}
