import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show MultipartFile;
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/domain/entities/order.dart';
import 'package:mechadeli_flutter/domain/entities/order_child.dart';
import 'package:mechadeli_flutter/domain/entities/plan_matrix.dart';
import 'package:mechadeli_flutter/domain/entities/shop_plan.dart';
import 'package:mechadeli_flutter/domain/entities/sub_category.dart';
import 'package:mechadeli_flutter/domain/entities/user.dart';
import 'package:mechadeli_flutter/infrastructure/wrappers/api_clients/header_interceptor.dart';

import '../../domain/entities/array_response.dart';
import '../../domain/entities/data_list.dart';
import '../../domain/entities/map_response.dart';
import '../../domain/entities/shop.dart';
import '../../domain/entities/option_plan.dart' as OptionPlanEntity;
import '../../domain/repositories/api_shop_repository.dart';
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
          //Shop.me set
          Shop.me = shop;
          myApiToken = token;
          
          print(Shop.me);
          

        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }
    return shop;
  }

  @override
  Future<Shop?> updateShop(Map<String, dynamic> data, int shopId) async {
    // TODO: implement updateShop
    Shop shop = Shop();
    //
    try{
      final response = await _apiClient.updateShop(data, shopId);

      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          shop = Shop.fromJson(result.data);
          print("update!");
          print(shop);
          //Shop.me set
          Shop.me = shop;
          print(Shop.me);

        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }
    return shop;
  }

  @override
  Future<List<ShopPlan>?> getShopPlan(int shopId) async{
    List<ShopPlan> list = [];

    Map<String, dynamic> data = {};

    try{
      final response = await _apiClient.getShopPlanListByShopId(shopId);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          final dataList = DataList.fromJson(result.data);
          final shopPlans= dataList.data.map((e) {
            var shopPlan = ShopPlan.fromJson(e);
            return shopPlan;
          });
          list = shopPlans.toList();
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return list;
  }

  @override
  Future<ShopPlan?> registerShopPlan(Map<String, dynamic> data, int shopId) async{
    ShopPlan plan = ShopPlan();

    //shop id add
    data['shop_id'] = shopId;

    try{
      final response = await _apiClient.registerShopPlan(data);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          plan = ShopPlan.fromJson(result.data);
          print("add new shop plan!");
          print(plan);
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }


    return plan;
  }

  @override
  Future<List<SubCategory>?> getSubCategory() async{
    List<SubCategory> list = [];
    // Map<String, dynamic> data = {};

    try{
      final response = await _apiClient.getSubCategory();
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          final dataList = DataList.fromJson(result.data);
          final categories= dataList.data.map((e) {
            var subCategory = SubCategory.fromJson(e);
            return subCategory;
          });
          list = categories.toList();
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return list;
  }

  @override
  Future<ShopPlan?> updateShopPlan(Map<String, dynamic> data, int shopPlanId) async{
    ShopPlan plan = ShopPlan();

    try{
      final response = await _apiClient.updateShopPlan(data, shopPlanId);
      print(response.body);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          plan = ShopPlan.fromJson(result.data);
          print("update shop plan!");
          print(plan);
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }


    return plan;
  }

  @override
  Future<List<OptionPlanEntity.OptionPlan>?> getOptionPlan(int shopId) async{
    List<OptionPlanEntity.OptionPlan> list = [];

    Map<String, dynamic> data = {};

    try{
      final response = await _apiClient.getOptionPlanListByShopId(shopId);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          final dataList = DataList.fromJson(result.data);
          final shopPlans= dataList.data.map((e) {
            var shopPlan = OptionPlanEntity.OptionPlan.fromJson(e);
            return shopPlan;
          });
          list = shopPlans.toList();
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }


    print("==========");
    print(list);

    return list;
  }

  @override
  Future<OptionPlanEntity.OptionPlan?> registerOptionPlan(Map<String, dynamic> data, int shopId) async{
    OptionPlanEntity.OptionPlan plan = OptionPlanEntity.OptionPlan();

    //shop id add
    data['shop_id'] = shopId;

    try{
      final response = await _apiClient.registerOptionPlan(data);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          plan = OptionPlanEntity.OptionPlan.fromJson(result.data);
          print("add new option plan!");
          print(plan);
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }


    return plan;
  }

  @override
  Future<OptionPlanEntity.OptionPlan?> updateOptionPlan(Map<String, dynamic> data, int optionPlanId) async{
    OptionPlanEntity.OptionPlan plan = OptionPlanEntity.OptionPlan();

    try{
      final response = await _apiClient.updateOptionPlan(data, optionPlanId);
      print(response.body);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          plan = OptionPlanEntity.OptionPlan.fromJson(result.data);
          print("update shop plan!");
          print(plan);
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }


    return plan;
  }

  @override
  Future<List<OptionPlanEntity.OptionPlan>?> getOptionPlanByShopPlanId(int shopPlanId) async{

    print("getOptionPlanByShopPlanId");

    List<OptionPlanEntity.OptionPlan> list = [];

    Map<String, dynamic> data = {};

    try{
      final response = await _apiClient.getOptionPlanListByShopPlanId(shopPlanId);
      print(response);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          final dataList = DataList.fromJson(result.data);
          final shopPlans= dataList.data.map((e) {
            var shopPlan = OptionPlanEntity.OptionPlan.fromJson(e);
            return shopPlan;
          });
          list = shopPlans.toList();
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return list;
  }

  @override
  Future<List<PlanMatrix>?> updatePlanMatrix(Map<String, dynamic> data) async{

    List<PlanMatrix> list = [];

    try{
      final response = await _apiClient.updatePlanMatrix(data);
      if (response.isSuccessful) {
        // print(response.body['status']);
        List<dynamic> dataList = response.body['data'] as List<dynamic>;
        final matrixes= dataList.map((e) {
          var matrix = PlanMatrix.fromJson(e);
          return matrix;
        });
        list = matrixes.toList();
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }


    return list;
  }

  @override
  Future<List<Order>> getOrderListByShopId(int shopId) async{
    List<Order> list = [];

    Map<String, dynamic> data = {};

    try{
      final response = await _apiClient.getOrderListByShopId(shopId);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          final dataList = DataList.fromJson(result.data);
          final orders= dataList.data.map((e) {
            var order = Order.fromJson(e);
            return order;
          });
          list = orders.toList();
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return list;
  }

  @override
  Future<List<OrderChild>> getOrderChildListByOrderId(int orderId) async{
    List<OrderChild> list = [];

    Map<String, dynamic> data = {};

    try{
      final response = await _apiClient.getOrderChildListByOrderId(orderId);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          final dataList = DataList.fromJson(result.data);
          final childs= dataList.data.map((e) {
            var child = OrderChild.fromJson(e);
            return child;
          });
          list = childs.toList();
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return list;
  }

  @override
  Future<User?> getUserById(int userId) async{

    User user = User();

    try{
      final response = await _apiClient.getUserByUserId(userId);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          user = User.fromJson(result.data);
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return user;
  }

  @override
  Future<List<User>?> getUsersByShopId(int shopId) async{
    List<User> list = [];

    Map<String, dynamic> data = {};

    try{
      final response = await _apiClient.getUserListByShopId(shopId);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          final dataList = DataList.fromJson(result.data);
          final users= dataList.data.map((e) {
            var user = User.fromJson(e);
            return user;
          });
          list = users.toList();
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return list;
  }

  @override
  Future<Order?> updateOrder(Map<String, dynamic> data, int orderId) async{
    Order order = Order();

    try{
      final response = await _apiClient.updateOrder(data, orderId);
      print(response.body);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          order = Order.fromJson(result.data);
          print("update order!");
          print(order);
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return order;
  }

  @override
  Future<List<OrderChild>?> updateOrderPlans(Map<String, dynamic> data, int orderId) async{

    List<OrderChild> list = [];

    try{
      final response = await _apiClient.updateOrderPlans(data, orderId);
      print(response.body);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          final dataList = DataList.fromJson(result.data);
          final childs= dataList.data.map((e) {
            var child = OrderChild.fromJson(e);
            return child;
          });
          list = childs.toList();
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return list;
  }

  @override
  Future<Order?> getOrder(int orderId) async{
    Order order = Order();

    try{
      final response = await _apiClient.getOrder(orderId);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          order = Order.fromJson(result.data);
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return order;

  }

  @override
  Future<List<OrderChild>?> updateOrderOptionPlans(Map<String, dynamic> data, int orderId) async{
    List<OrderChild> list = [];

    //data = { checked_options : 45 }

    try{
      final response = await _apiClient.updateOrderOptionPlans(data, orderId);
      print(response.body);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          final dataList = DataList.fromJson(result.data);
          final childs= dataList.data.map((e) {
            var child = OrderChild.fromJson(e);
            return child;
          });
          list = childs.toList();
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return list;
  }

  @override
  Future<List<User>?> getUserList() async{
    List<User> list = [];

    Map<String, dynamic> data = {};

    try{
      final response = await _apiClient.getUserList();
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          final dataList = DataList.fromJson(result.data);
          final users= dataList.data.map((e) {
            var user = User.fromJson(e);
            return user;
          });
          list = users.toList();
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return list;
  }

  @override
  Future<MapResponse?> deleteShopOrder(int shopId) async{

    print("deleteShopOrder: shopId#" + shopId.toString());

    try{
      final response = await _apiClient.deleteShopOrder(shopId);
      if (response.isSuccessful) {
        // final result = ArrayResponse.fromJson(response.body);
        final result = response.body;
        String status = result['status'];
        print(status);
        print(result);
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return MapResponse();


  }

  @override
  Future<Order?> makeOrder(Map<String, dynamic> data) async{

    Order order = Order();

    //data = { checked_options : 45 }

    try{
      final response = await _apiClient.makeOrder(data);
      print(response.body);
      if (response.isSuccessful) {
        final result = MapResponse.fromJson(response.body);
        if(result.errorCode.isNotEmpty){
          //例外発生！
          throw Exception(result.errors);
        }else{
          order = Order.fromJson(result.data);
        }
      }
    }on Exception catch(e){
      print("exception");
      print(e);
    }

    return order;
  }


}
