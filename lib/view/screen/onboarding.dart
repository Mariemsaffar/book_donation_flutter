import 'package:flutter/material.dart';
import 'package:vesion_final_flutter/controller/onboarding_controller.dart';
import 'package:vesion_final_flutter/core/constant/color.dart';
import 'package:vesion_final_flutter/data/datasource/static/static.dart';
import 'package:vesion_final_flutter/view/widget/onboarding/custombutton.dart';
import 'package:vesion_final_flutter/view/widget/onboarding/customslider.dart';
import 'package:vesion_final_flutter/view/widget/onboarding/dotcontroller.dart';
import 'package:get/get.dart';
class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp()) ;
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 4,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ]),
        ));
  }
}