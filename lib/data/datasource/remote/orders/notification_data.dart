import 'package:vesion_final_flutter/core/class/crud.dart';


class NotificationData {
  Crud crud;
  NotificationData(this.crud);
  getData(String id) async {
    var AppLink;
    var response = await crud.postData(AppLink.notification, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}
