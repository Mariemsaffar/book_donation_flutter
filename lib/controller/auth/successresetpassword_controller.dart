import 'package:vesion_final_flutter/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {

  goToPageLogin() ;

}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToPageLogin() {
    Get.offAllNamed(AppRoute.homepage) ;
  }

}