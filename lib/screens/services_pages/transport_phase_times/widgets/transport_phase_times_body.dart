import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/widgets/filter_button/filter_button.dart';
import 'package:rifad/core/widgets/sort_button/sort_button.dart';
import 'package:rifad/screens/services_pages/transport_phase_times/widgets/custom_transport_time_card.dart';

class TransportPhaseTimesBody extends StatelessWidget {
  const TransportPhaseTimesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        const Column(children: [CustomTransportTimeCard()]),
        Positioned(
          bottom: 32.h, // تحريك العنصر للخروج من الإطار
          left: MediaQuery.of(context).size.width / 2 - 125, // منتصف الشاشة
          child: const Row(children: [SortButton(), FilterButton()]),
        ),
      ],
    );
  }
}
