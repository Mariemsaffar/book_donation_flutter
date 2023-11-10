import 'package:vesion_final_flutter/core/class/crud.dart';
import 'package:vesion_final_flutter/core/constant/routes.dart';


class HomeData {
  Crud crud;
  HomeData(this.crud);
  getData() async {
    var response = await crud.postData(AppRoute.homepage, {});
    return response.fold((l) => l, (r) => r);
  }

}