import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/screens/splash_screen.dart';
import 'package:rifad/utils/constants/colors_constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,

      /// Remove focus from any input element
      child: GestureDetector(
        onTap: () {
          final currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            currentFocus.unfocus();
          }
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'RIFAD',
          theme: ThemeData(
            scaffoldBackgroundColor: kScaffoldBackgroundColor,
            textTheme: Theme.of(
              context,
            ).textTheme.apply(fontFamily: 'GE SS Two'),
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
