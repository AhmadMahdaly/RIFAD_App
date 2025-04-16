import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';
import 'package:rifad/screens/more_page/widgets/more_page_body.dart';
import 'package:rifad/screens/more_page/widgets/user_name_and_number_and_log_out_button_header.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        flexibleSpace: Image.asset(
          'assets/images/Frame 427319836.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        toolbarHeight: 120.h,
        title: const UserNameAndNumberAndLogOutButtonHeader(),
      ),
      body: const MorePageBody(),
    );
  }
}
