import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rifad/core/themes/app_theme.dart';
import 'package:rifad/cubit/auth_cubit/auth_cubit.dart';
import 'package:rifad/screens/splash_screen/splash_screen.dart';

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
        child: BlocProvider<AuthCubit>(
          create: (context) => AuthCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'RIFAD',
            theme: appTheme(context),

            /// Localizations
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            home: const SplashScreen(),
          ),
        ),
      ),
    );
  }
}
