import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rifad/core/utils/components/height.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';
import 'package:rifad/cubit/date_and_time_cubit/date_cubit.dart';
import 'package:rifad/cubit/date_and_time_cubit/time_cubit.dart';
import 'package:rifad/screens/home_page/widgets/analysis_buttons/custom_container.dart';
import 'package:rifad/screens/home_page/widgets/analysis_buttons/dark_container.dart';
import 'package:rifad/screens/home_page/widgets/analysis_circular_percent.dart';
import 'package:rifad/screens/home_page/widgets/custom_dropdown_button/dropdown_line.dart';
import 'package:rifad/screens/home_page/widgets/date_and_time.dart';
import 'package:rifad/screens/home_page/widgets/head_text_title.dart';
import 'package:rifad/screens/home_page/widgets/welcome_to_user.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TimeCubit>(create: (context) => TimeCubit()),
        BlocProvider<DateCubit>(create: (context) => DateCubit()),
      ],
      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: false, toolbarHeight: 40.h),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: SingleChildScrollView(
            child: Column(
              spacing: 16.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WelcomeToUser(),
                const DateAndTime(),
                const H(h: 10),
                const HeadTitle(title: 'نظرة عامة'),
                const DropdownLine(),
                Row(
                  spacing: 12.w,
                  children: [
                    const Expanded(child: DarkContainer()),
                    Expanded(
                      child: CustomContainer(
                        icon: SvgPicture.asset('assets/svg/kaaba 1.svg'),
                        text: 'إجمالي عدد الحجاج',
                        num: 34678,
                      ),
                    ),
                  ],
                ),
                Row(
                  spacing: 12.w,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: CustomContainer(
                        icon: Icon(
                          Icons.check_circle_outline_rounded,
                          color: kMainColor,
                        ),
                        text: 'إجمالي الواصلين',
                        num: 34678,
                      ),
                    ),
                    const Expanded(
                      child: CustomContainer(
                        icon: Icon(Icons.timelapse, color: kMainColor),
                        text: 'إجمالي المتبقين',
                        num: 34678,
                      ),
                    ),
                    Expanded(
                      child: CustomContainer(
                        icon: SvgPicture.asset('assets/svg/sign-out-alt.svg'),
                        text: 'إجمالي من تم إخلاؤهم',
                        num: 34678,
                      ),
                    ),
                  ],
                ),
                const H(h: 10),
                const HeadTitle(title: 'تقارير الحجاج'),
                const AnalysisCircularPercentWidget(),
                const H(h: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
