import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EndOfPage extends StatelessWidget {
  const EndOfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.h),
      child: Image.asset(
        'assets/images/endOfPage.png',
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
