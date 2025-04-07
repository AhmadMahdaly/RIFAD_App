import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rifad/screens/confirm_login/confirm_login_screen.dart';
import 'package:rifad/screens/login/widgets/app_welcome_widget.dart';
import 'package:rifad/screens/login/widgets/forget_password_widget.dart';
import 'package:rifad/screens/login/widgets/title_of_welcome_page_widget.dart';
import 'package:rifad/utils/components/custom_button.dart';
import 'package:rifad/utils/components/custom_textformfield.dart';
import 'package:rifad/utils/components/height.dart';
import 'package:rifad/utils/components/width.dart';
import 'package:rifad/utils/constants/colors_constants.dart';
import 'package:rifad/widgets/end_of_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isShowPassword = true;
  bool isChecked = false;
  bool isLoading = false;
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: AutofillGroup(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const H(h: 40),
                  Image.asset('assets/images/logo.png', width: 110.w),
                  const H(h: 20),
                  const AppWelcome(),
                  const H(h: 12),
                  const TitleOfWelcomePage(),
                  const H(h: 32),
                  CustomTextformfield(
                    controller: _userNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'الرجاء إدخال اسم المستخدم';
                      }
                      return null;
                    },
                    text: 'اسم المستخدم',
                    icon: SvgPicture.asset(
                      'assets/svg/user.svg',
                      fit: BoxFit.none,
                      width: 16.w,
                      height: 16.h,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 18.h,
                      horizontal: 10.w,
                    ),
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.email],
                  ),
                  const H(h: 20),
                  CustomTextformfield(
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'الرجاء إدخال كلمة المرور';
                      }
                      return null;
                    },
                    text: 'كلمة المرور',
                    icon: SvgPicture.asset(
                      'assets/svg/lock.svg',
                      fit: BoxFit.none,
                      width: 16.w,
                      height: 16.h,
                    ),
                    passwordIcon: IconButton(
                      onPressed:
                          () => setState(() {
                            isShowPassword = !isShowPassword;
                          }),
                      icon:
                          isShowPassword
                              ? SvgPicture.asset(
                                'assets/svg/eye.svg',
                                fit: BoxFit.none,
                              )
                              : SvgPicture.asset(
                                'assets/svg/EyeClosed.svg',
                                fit: BoxFit.none,
                              ),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isShowPassword,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 18.h,
                      horizontal: 10.w,
                    ),
                    textInputAction: TextInputAction.done,
                    autofillHints: const [AutofillHints.password],
                  ),
                  const H(h: 14),
                  const ForgetPasswordWidget(),
                  const H(h: 40),
                  Container(
                    width: 297.w,
                    height: 72.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF9F9F9),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.84.w,
                          color: const Color(0xFFD3D3D3),
                        ),
                        borderRadius: BorderRadius.circular(2.53),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 3.37,
                          spreadRadius: 0.84,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        W(w: 16.w),
                        Image.asset(
                          'assets/images/recaptcha.png',
                          width: 60.w,
                          height: 60.h,
                        ),
                        const Spacer(),
                        Text(
                          "I'm not a robot",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        if (isLoading)
                          Container(
                            margin: EdgeInsets.only(right: 14.w, left: 14.w),
                            alignment: Alignment.center,
                            height: 20.h,
                            width: 20.w,
                            child: const CircularProgressIndicator(
                              color: kMainColor,
                              strokeWidth: 2,
                            ),
                          )
                        else
                          Checkbox(
                            value: isChecked,
                            activeColor: kMainColor,
                            checkColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            side: const BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),

                            onChanged: (value) async {
                              setState(() {
                                isLoading = true;
                              });
                              await Future.delayed(
                                const Duration(seconds: 2),
                                () {},
                              );

                              setState(() {
                                isChecked = value!;
                                isLoading = false;
                              });
                            },
                          ),
                        W(w: 10.w),
                      ],
                    ),
                  ),
                  const H(h: 30),
                  CustomButton(
                    isActive: isChecked,
                    text: 'تسجيل الدخول',
                    onTap: () {
                      if (formKey.currentState!.validate() && isChecked) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ConfirmLoginScreen(),
                          ),
                        );
                      }
                    },
                  ),

                  const H(h: 25),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const EndOfPage(),
    );
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
