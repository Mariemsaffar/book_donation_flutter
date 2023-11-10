import 'package:vesion_final_flutter/core/class/statusrequest.dart';
import 'package:vesion_final_flutter/core/functions/handingdatacontroller.dart';
import 'package:vesion_final_flutter/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  
  TestData testData = TestData(Get.find());

  List data = [];

  late StatusRequest statusRequest;

  getData() async {

    statusRequest = StatusRequest.loading;

    var response = await testData.getData();

    print("=============================== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest){

      // Start backend 
      if (response['status'] == "success") {
      
        data.addAll(response['data']);
      

      }else{
       
        statusRequest = StatusRequest.failure ; 
      
      }
      // End 
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
