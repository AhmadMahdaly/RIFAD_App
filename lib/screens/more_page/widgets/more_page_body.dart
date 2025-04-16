import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rifad/core/utils/components/height.dart';
import 'package:rifad/core/utils/constants/colors_constants.dart';
import 'package:rifad/screens/more_page/widgets/services_tab_widget.dart';
import 'package:rifad/screens/services_pages/transport_phase_times/transport_phase_times_page.dart';

class MorePageBody extends StatelessWidget {
  const MorePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: SingleChildScrollView(
        child: Column(
          spacing: 12.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'خدمات النقل',
              style: TextStyle(
                color: kMainColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                height: 1.25.h,
              ),
            ),
            const H(h: 5),
            ServicesTabWidget(
              icon: const Icon(Icons.menu, color: kMainColor),
              text: 'حصص مراحل النقل',
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TransportPhaseTimesPage(),
                    ),
                  ),
            ),
            ServicesTabWidget(
              icon: SvgPicture.asset('assets/svg/driver-outline.svg'),
              text: 'المرشدين',
            ),
            ServicesTabWidget(
              icon: SvgPicture.asset('assets/svg/Document.svg'),
              text: 'أوامر التشغيل',
            ),
            ServicesTabWidget(
              icon: SvgPicture.asset(
                'assets/svg/ion_bus-outline.svg',
                colorFilter: const ColorFilter.mode(
                  kMainColor,
                  BlendMode.srcIn,
                ),
              ),
              text: 'الحافلات',
            ),
            ServicesTabWidget(
              icon: SvgPicture.asset('assets/svg/refresh_02.svg'),
              text: 'حركة الحافلات',
            ),
            ServicesTabWidget(
              icon: SvgPicture.asset('assets/svg/place_location.svg'),
              text: 'المراحل',
            ),
          ],
        ),
      ),
    );
  }
}
