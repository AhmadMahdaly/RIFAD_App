import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/screens/login/login_screen.dart';
import 'package:rifad/screens/splash_screen/widgets/splash_logo.dart';
import 'package:rifad/utils/constants/colors_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    // This is setting the time for disappeare //
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: AlignmentDirectional.center,
        children: [
          const SplashLogoWidget(),

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
      ),
    );
  }
}
