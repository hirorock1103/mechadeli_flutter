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
import '../../domain/repositories/api_common_repository.dart';
import '../../domain/repositories/api_shop_repository.dart';
import '../wrappers/api_clients/sample/api_client.dart';
import '../wrappers/api_clients/api_shop_client.dart';


class ApiShopRepositoryImpl implements ApiShopRepository {
  ApiShopRepositoryImpl(this._apiClient);

  static BuildContext? context;
  final ApiShopClient _apiClient;

  static const _retryCount = 5;

  void _handleError({required Response<Map<String, dynamic>> response}) {
    //log.d(response.error);
  }

  @override
  Future<Shop?> loginShop(Map<String, dynamic> data) async{
    // TODO: implement loginShop
    Shop shop = Shop();
    //
    try{

      final response = await _apiClient.shopLogin(data);

      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          shop = Shop.fromJson(result.auth);
          String token = result.data['token'];
          //Shop.me set
          Shop.me = shop;
          myApiToken = token;

        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }
    return shop;
  }

  @override
  Future<Shop?> registerShop(Map<String, dynamic> data) async{
    // TODO: implement registerShop
    Shop shop = Shop();
    //
    try{

      final response = await _apiClient.registerShop(data);

      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          shop = Shop.fromJson(result.auth);
          String token = result.data['token'];
          print(token);
          //Shop.me set
          Shop.me = shop;
          myApiToken = token;

        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }
    return shop;
  }


}
