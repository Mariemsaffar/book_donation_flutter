import 'package:vesion_final_flutter/controller/auth/login_controller.dart';
import 'package:vesion_final_flutter/core/constant/color.dart';
import 'package:vesion_final_flutter/core/functions/validinput.dart';
import 'package:vesion_final_flutter/view/widget/auth/custombuttonauth.dart';
import 'package:vesion_final_flutter/view/widget/auth/customtextbodyauth.dart';
import 'package:vesion_final_flutter/view/widget/auth/customtextformauth.dart';
import 'package:vesion_final_flutter/view/widget/auth/customtexttitleauth.dart';
import 'package:vesion_final_flutter/view/widget/auth/logoauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vesion_final_flutter/view/widget/auth/textsignup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formstate,
          child: ListView(children: [
            const LogoAuth(),
            const SizedBox(height: 20),
            const CustomTextTitleAuth(text: "Welcome Back"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
                text:
                "Sign In With Your Email And Password OR Continue With Social Media"),
            const SizedBox(height: 15),
            CustonTextFormAuth(
              valid: (val){
                return validInput(val!, 5, 75, "email");

              },
              mycontroller: controller.email,
              hinttext: "Enter Your Email",
              iconData: Icons.email_outlined,
              labeltext: "Email",
              // mycontroller: ,
            ),
            CustonTextFormAuth(
              valid: (val){
                return validInput(val!, 5, 25, "password");
              },
              mycontroller: controller.password,
              hinttext: "Enter Your Password",
              iconData: Icons.lock_outline,
              labeltext: "Password",
              // mycontroller: ,
            ),
            InkWell(
              onTap: () {
                controller.goToForgetPassword();
              },
              child: const Text(
                "Forget Password",
                textAlign: TextAlign.end,
              ),
            ),
            CustomButtomAuth(text: "Sign In", onPressed: () {
              controller.login();
            }),
            const SizedBox(height: 40),
            CustomTextSignUpOrSignIn(
              textone: "Don't have an account ? ",
              texttwo: "SignUp",
              onTap: () {
                controller.goToSignUp();
              },
            )
          ]),
        ),
      ),
    );
  }
}