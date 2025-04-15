import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rifad/check_auth.dart';
import 'package:rifad/core/widgets/end_of_page.dart';
import 'package:rifad/cubit/auth_cubit/auth_cubit.dart';
import 'package:rifad/screens/splash_screen/widgets/splash_logo.dart';

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
    BlocProvider.of<AuthCubit>(context).setupDio();
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
