import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:rifad/screens/confirm_login/widget/confirm_card_login_number_widget.dart';
import 'package:rifad/screens/confirm_login/widget/custom_timer_widget.dart';
import 'package:rifad/screens/confirm_login/widget/title_of_confirm_login_widget.dart';
import 'package:rifad/screens/home_page/home_page.dart';
import 'package:rifad/utils/components/custom_button.dart';
import 'package:rifad/utils/components/height.dart';
import 'package:rifad/utils/constants/colors_constants.dart';
import 'package:rifad/widgets/end_of_page.dart';

class ConfirmLoginScreen extends StatefulWidget {
  const ConfirmLoginScreen({super.key});

  @override
  State<ConfirmLoginScreen> createState() => _ConfirmLoginScreenState();
}

class _ConfirmLoginScreenState extends State<ConfirmLoginScreen> {
  bool _onEditing = true;
  String? code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const H(h: 40),
                Image.asset('assets/images/logo.png', width: 110.w),
                const H(h: 20),
                const TitleOfConfirmLoginWidget(),
                const H(h: 16),
                const ConfirmCardLoginNumberWidget(),
                const H(h: 16),
                Text(
                  'أكد هويتك',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.43.h,
                  ),
                ),
                const H(h: 10),
                Text(
                  'الرجاء إدخال كلمة المرور المرسلة ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w200,
                    height: 1.43.h,
                  ),
                ),
                const H(h: 30),
                VerificationCode(
                  length: 6,
                  margin: EdgeInsets.symmetric(horizontal: 2.sp),
                  underlineWidth: 1,
                  itemSize: 48.sp,
                  textStyle: TextStyle(
                    fontSize: 22.sp,
                    color: kMainColor,
                    fontFamily: 'FF Shamel Family',
                    fontWeight: FontWeight.w700,
                  ),
                  fullBorder: true,
                  underlineColor: kMainColor,
                  underlineUnfocusedColor: const Color(0xFFD3D3D3),
                  cursorColor: const Color(0xFFFCFCFC),
                  onCompleted: (String value) {
                    setState(() {
                      code = value;
                    });
                  },
                  onEditing: (bool value) {
                    setState(() {
                      _onEditing = value;
                    });
                    if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
                const H(h: 36),
                Text(
                  'لم تتلقى الرمز؟',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.20.h,
                  ),
                ),
                const H(h: 16),
                const CustomTimerWidget(),
                const H(h: 60),
                CustomButton(
                  isActive: code != null,
                  text: 'تأكيد',
                  onTap: () {
                    if (code != null && code!.length == 6 && code == '111111') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }
                  },
                ),
                const H(h: 20),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const EndOfPage(),
    );
  }
}
