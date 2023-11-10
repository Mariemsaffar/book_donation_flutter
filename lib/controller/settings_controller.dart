import 'package:vesion_final_flutter/core/constant/routes.dart';
import 'package:vesion_final_flutter/core/services/services.dart';

import 'package:get/get.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();

  logout() {
    String userid = myServices.sharedPreferences.getString("id")!;

    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.login);
  }
}
