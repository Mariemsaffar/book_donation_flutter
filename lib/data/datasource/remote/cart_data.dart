import 'package:vesion_final_flutter/core/class/crud.dart';


class CartData {
  Crud crud;
  CartData(this.crud);
  addCart(String usersid, String itemsid) async {
    var AppLink;
    var response = await crud
        .postData(AppLink.cartadd, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  deleteCart(String usersid, String itemsid) async {
    var AppLink;
    var response = await crud
        .postData(AppLink.cartdelete, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  getCountCart(String usersid, String itemsid) async {
    var AppLink;
    var response = await crud.postData(
        AppLink.cartgetcountitems, {"usersid": usersid, "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  viewCart(String usersid) async {
    var AppLink;
    var response = await crud.postData(AppLink.cartview, {
      "usersid": usersid,
    });
    return response.fold((l) => l, (r) => r);
  }

  checkCoupon(String couponname) async {
    var AppLink;
    var response =
    await crud.postData(AppLink.checkcoupon, {"couponname": couponname});
    return response.fold((l) => l, (r) => r);
  }
}

