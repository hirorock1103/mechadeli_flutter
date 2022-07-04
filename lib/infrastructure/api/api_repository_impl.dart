import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show MultipartFile;
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/domain/entities/admin.dart';
import 'package:mechadeli_flutter/domain/entities/notice.dart';
import 'package:mechadeli_flutter/domain/entities/order.dart';
import 'package:mechadeli_flutter/domain/entities/shop_area.dart';
import 'package:mechadeli_flutter/domain/entities/shop_plan.dart';
import 'package:mechadeli_flutter/infrastructure/wrappers/api_clients/header_interceptor.dart';

import '../../domain/entities/data_list.dart';
import '../../domain/entities/map_response.dart';
import '../../domain/entities/shop.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/api_repository.dart';
import '../wrappers/api_clients/api_client.dart';


class ApiRepositoryImpl implements ApiRepository {
  ApiRepositoryImpl(this._apiClient);

  static BuildContext? context;
  final ApiClient _apiClient;

  static const _retryCount = 5;

  void _handleError({required Response<Map<String, dynamic>> response}) {
    //log.d(response.error);
  }

  @override
  Future<User> getUser(String userCode) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<User?> registerUser(Map<String, dynamic> data) async {
    // TODO: implement registerUser
    User user = User();
    //
    try{

      final response = await _apiClient.registerUser(data);

      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          user = User.fromJson(result.auth);
          String token = result.data['token'];
          print(token);
          //User.me set
          User.me = user;
          myApiToken = token;

        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }
    return user;
  }

  @override
  Future<User?> updateImageTest(int userId, String imagePath) {
    // TODO: implement updateImageTest
    throw UnimplementedError();
  }

  @override
  Future<User?> updateUser(Map<String, dynamic> data) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<List<User>> userList({String? companyCode}) {
    // TODO: implement userList
    throw UnimplementedError();
  }

  @override
  Future<Admin?> registerAdmin(Map<String, dynamic> data) async {
    // TODO: implement registerAdmin
    Admin admin = Admin();

    print(data);
    //
    final response = await _apiClient.registerAdmin(data);

    print(response.statusCode);
    print(response.error);
    print(response.body);

    if (response.isSuccessful) {
      final body = response.body;
      //print(body);
      if (body != null) {
        final result = MapResponse.fromJson(body);
        admin = Admin.fromJson(result.data["user"]);
      }
    }
    return admin;


  }

  @override
  Future<List<Shop>> shopList() async {

    // final result = await _apiClient.getShopList();
    // print(result);
    List<Shop> list = [];

    Shop shop = Shop();
    shop = shop.copyWith(id: 1);
    shop = shop.copyWith(email: "test@test.jp");
    shop = shop.copyWith(name: "test name");
    shop = shop.copyWith(apply_status: applyStatusToInt(ApplyStatus.notYet));
    list.add(shop);
    shop = Shop();
    shop = shop.copyWith(id: 2);
    shop = shop.copyWith(email: "tes2@test.jp");
    shop = shop.copyWith(name: "test2 name");
    shop = shop.copyWith(apply_status: applyStatusToInt(ApplyStatus.ok));
    list.add(shop);
    shop = Shop();
    shop = shop.copyWith(id: 3);
    shop = shop.copyWith(email: "tes3@test.jp");
    shop = shop.copyWith(name: "test3 name");
    shop = shop.copyWith(apply_status: applyStatusToInt(ApplyStatus.ng));
    list.add(shop);
    shop = Shop();
    shop = shop.copyWith(id: 4);
    shop = shop.copyWith(email: "tes4@test.jp");
    shop = shop.copyWith(name: "test4 name");
    shop = shop.copyWith(apply_status: applyStatusToInt(ApplyStatus.confirm));
    list.add(shop);


    // try {
    //   if (result.isSuccessful) {
    //     final body = result.body;
    //     if (body != null) {
    //       final response = MapResponse.fromJson(body);
    //       final dataList = DataList.fromJson(response.data['data_list']);
    //       final shops= dataList.data.map((e) {
    //         var shop = Shop.fromJson(e);
    //         return shop;
    //       });
    //       list = shops.toList();
    //     }
    //     return list;
    //   }
    // } on Exception catch (e) {
    //   return list;
    // }
    //throw UnimplementedError();
    return list;
  }

  @override
  Future<List<Notice>> getNoticeList(int to) async {
    List<Notice> list = [];

    Notice notice = Notice();
    notice = notice.copyWith(id: 1);
    notice = notice.copyWith(title: "test title");
    notice = notice.copyWith(contents: "test contnets");
    notice = notice.copyWith(updated_at: "2020/02/01 12:11");
    list.add(notice);
    notice = Notice();
    notice = notice.copyWith(id: 2);
    notice = notice.copyWith(title: "test title2");
    notice = notice.copyWith(contents: "test contnets2");
    notice = notice.copyWith(updated_at: "2020/02/02 12:11");
    list.add(notice);



    return list;
  }

  @override
  Future<List<Order>> getOrderListByUserId(int userId) async{

    print("getOrderListByUserId");

    List<Order> list = [];

    Order order = Order();
    order = order.copyWith(id: 1);
    order = order.copyWith(first: "2022/12/22 12:30");
    order = order.copyWith(second: "2022/12/22 12:30");
    order = order.copyWith(third: "2022/12/22 12:30");
    order = order.copyWith(created_at: "2022/12/22 12:30");
    order = order.copyWith(progress: MechadeliFlowContents[MechadeliFlow.inContact]["id"]);

    list.add(order);

    return list;

  }

  @override
  Future<List<ShopArea>> getShopAreaListByShopId(int shopId) {
    // TODO: implement getShopAreaListByShopId
    throw UnimplementedError();
  }

  @override
  Future<List<ShopPlan>> getShopPlanListByShopId(int shopId) {
    // TODO: implement getShopPlanListByShopId
    throw UnimplementedError();
  }

}
