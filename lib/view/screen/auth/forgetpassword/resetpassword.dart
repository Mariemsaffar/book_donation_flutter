import 'package:vesion_final_flutter/controller/auth/resetpassword_controller.dart';
import 'package:vesion_final_flutter/core/constant/color.dart';
import 'package:vesion_final_flutter/view/widget/auth/custombuttonauth.dart';
import 'package:vesion_final_flutter/view/widget/auth/customtextbodyauth.dart';
import 'package:vesion_final_flutter/view/widget/auth/customtextformauth.dart';
import 'package:vesion_final_flutter/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
    Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('ResetPassword',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(text: "New Password"),
          const SizedBox(height: 10),
          const CustomTextBodyAuth(
              text:
              "Please Enter new Password"),
          const SizedBox(height: 15),
          CustonTextFormAuth(
            valid: (val){

            },
            mycontroller: controller.password,
            hinttext: "Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),   CustonTextFormAuth(
            valid: (val){

            },
            mycontroller: controller.password,
            hinttext: "Re Enter Your Password",
            iconData: Icons.lock_outline,
            labeltext: "Password",
            // mycontroller: ,
          ),
          CustomButtomAuth(text: "save", onPressed: () {
            controller.goToSuccessResetPassword();
          }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}