import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/utils/constants/colors_constants.dart';

class EndOfPage extends StatelessWidget {
  const EndOfPage({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: AlignmentDirectional.center,
      children: [
        child,

        Positioned(
          bottom: 80.h,
          right: -41.w,
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.deepPurple.withAlpha(75),
              BlendMode.srcIn,
            ),
            child: Image.asset(
              'assets/images/Rectangle.png',
              width: 503.70.w,
              height: 101.95.h,
            ),
          ),
        ),
        Positioned(
          bottom: 10.h,
          left: -41.w,
          child: RotatedBox(
            quarterTurns: 2,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.deepPurple.withAlpha(75),
                BlendMode.srcIn,
              ),
              child: Image.asset(
                'assets/images/Rectangle.png',
                width: 503.70.w,
                height: 101.95.h,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0.h,
          child: Container(
            height: 37.h,
            width: MediaQuery.of(context).size.width,
            color: kScaffoldBackgroundColor,
          ),
        ),
      ],
    );
  }
}
