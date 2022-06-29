import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show MultipartFile;
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/domain/entities/admin.dart';

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
  Future<User?> registerUser(Map<String, dynamic> data) {
    // TODO: implement registerUser
    throw UnimplementedError();
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

    print(response);

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

}
