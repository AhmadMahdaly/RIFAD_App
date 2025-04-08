import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rifad/check_auth.dart';
import 'package:rifad/screens/splash_screen/widgets/splash_logo.dart';
import 'package:rifad/widgets/end_of_page.dart';

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
        MaterialPageRoute(builder: (context) => const CheckAuth()),
      );
    });
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashLogoWidget(),

      bottomNavigationBar: EndOfPage(),
    );
  }
}
