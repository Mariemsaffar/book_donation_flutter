import 'package:flutter/material.dart';
import 'package:vesion_final_flutter/controller/onboarding_controller.dart';
import 'package:vesion_final_flutter/core/constant/color.dart';
import 'package:vesion_final_flutter/data/datasource/static/static.dart';
import 'package:get/get.dart';
class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
                onBoardingList.length,
                    (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                  duration: const Duration(milliseconds: 900),
                  width: controller.currentPage == index ? 20 : 5,
                  height: 6,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                ))
          ],
        ));
  }
}
//PageView.builder(itemCount: onBoardingList.length,
//         itemBuilder: (context,i) =>Column(
//           children: [Text(onBoardingList[i].title!, style: const TextStyle(fontWeight: FontWeight.bold , fontSize: 20 )),
//           const SizedBox(height:30),
//           Image.asset(onBoardingList[i].image! , width: 250, height:200, fit: BoxFit.fill),
//             const SizedBox(height:30),
//           Container(
//             width: double.infinity,
//             alignment: Alignment.center,
//             child: Text(onBoardingList[i].body! , textAlign: TextAlign.center, style:const TextStyle(height: 3, color : AppColor.grey, fontWeight : FontWeight.bold , fontSize : 17 ))
