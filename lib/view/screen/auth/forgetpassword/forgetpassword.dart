import 'package:vesion_final_flutter/controller/auth/forgetpassword_controller.dart';
import 'package:vesion_final_flutter/core/constant/color.dart';
import 'package:vesion_final_flutter/view/widget/auth/custombuttonauth.dart';
import 'package:vesion_final_flutter/view/widget/auth/customtextbodyauth.dart';
import 'package:vesion_final_flutter/view/widget/auth/customtextformauth.dart';
import 'package:vesion_final_flutter/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('Forget Password',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "Check Email"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
              "Sign Up With Your Email And Password OR Continue With Social Media"),
          const SizedBox(height: 15),
          CustonTextFormAuth(
            valid: (val){

            },
            mycontroller: controller.email,
            hinttext: "Enter Your Email",
            iconData: Icons.email_outlined,
            labeltext: "Email",
            // mycontroller: ,
          ),
          CustomButtomAuth(text: "Check", onPressed: () {
            controller.goToVerfiyCode();
          }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}