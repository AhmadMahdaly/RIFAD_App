import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/screens/home_page/widgets/custom_dropdown_button/session_dropdown_button.dart';
import 'package:rifad/screens/home_page/widgets/custom_dropdown_button/station_dropdown_button.dart';

class DropdownLine extends StatelessWidget {
  const DropdownLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: const [
        Expanded(child: SessionWidget()),
        Expanded(child: StationWidget()),
      ],
    );
  }
}
