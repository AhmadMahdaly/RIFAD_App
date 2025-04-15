import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/textfield_border_radius.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class StationWidget extends StatefulWidget {
  const StationWidget({super.key});

  @override
  State<StationWidget> createState() => _StationWidgetState();
}

class _StationWidgetState extends State<StationWidget> {
  final List<String> stations = ['1', '2'];
  String? selectedStation;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      dropdownColor: kScaffoldBackgroundColor,
      hint: Text(
        'المركز',
        // sessions.first,
        style: TextStyle(
          color: kMainColor,
          fontSize: 15.sp,
          fontFamily: 'GE SS Two',
          fontWeight: FontWeight.w300,
          height: 1.43.h,
        ),
      ),
      decoration: InputDecoration(
        border: textfieldBorderRadius(kMainColorLightColor),
        focusedBorder: textfieldBorderRadius(kMainColorLightColor),
        enabledBorder: textfieldBorderRadius(kMainColorLightColor),
        focusedErrorBorder: textfieldBorderRadius(Colors.red),
      ),

      icon: const Icon(Icons.keyboard_arrow_down_rounded, color: kMainColor),
      style: TextStyle(
        color: kMainColor,
        fontSize: 15.sp,
        fontFamily: 'GE SS Two',
        fontWeight: FontWeight.w300,
        height: 1.43.h,
      ),
      items:
          stations.map((country) {
            return DropdownMenuItem(value: country, child: Text(country));
          }).toList(),
      value: selectedStation,
      onChanged: (value) {
        setState(() {
          selectedStation = value;
        });
      },
    );
  }
}
