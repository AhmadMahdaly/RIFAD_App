import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/components/textfield_border_radius.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';

class SessionWidget extends StatefulWidget {
  const SessionWidget({super.key});

  @override
  State<SessionWidget> createState() => _SessionWidgetState();
}

class _SessionWidgetState extends State<SessionWidget> {
  final List<String> sessions = ['موسم حج 1447'];
  String? selectedSession;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      borderRadius: BorderRadius.circular(8.r),
      isExpanded: true,
      dropdownColor: kScaffoldBackgroundColor,
      hint: Text(
        sessions.last,
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
          sessions.map((country) {
            return DropdownMenuItem(value: country, child: Text(country));
          }).toList(),
      value: selectedSession,
      onChanged: (value) {
        setState(() {
          selectedSession = value;
        });
      },
    );
  }
}
