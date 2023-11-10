import 'package:vesion_final_flutter/core/constant/routes.dart';
import 'package:vesion_final_flutter/view/screen/home.dart';
import 'package:vesion_final_flutter/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:vesion_final_flutter/view/screen/auth/forgetpassword/verifycodesignup.dart';
import 'package:vesion_final_flutter/view/screen/auth/login.dart';
import 'package:vesion_final_flutter/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:vesion_final_flutter/view/screen/auth/signup.dart';
import 'package:vesion_final_flutter/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:vesion_final_flutter/view/screen/auth/success_signup.dart';
import 'package:vesion_final_flutter/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:vesion_final_flutter/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // Auth
  AppRoute.login: (context) => const Login(),
  AppRoute.signUp: (context) => const SignUp(),
  AppRoute.forgetPassword: (context) => const ForgetPassword(),
  AppRoute.verfiyCode: (context) => const VerfiyCode(),
  AppRoute.resetPassword: (context) => const ResetPassword(),

  AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
  AppRoute.successSignUp: (context) => const SuccessSignUp(),
  AppRoute.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
  // OnBoarding
  AppRoute.onBoarding: (context) => const OnBoarding(),
  AppRoute.homepage: (context) => const HomePage(),
};