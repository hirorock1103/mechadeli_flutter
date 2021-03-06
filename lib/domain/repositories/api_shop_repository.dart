
import 'package:mechadeli_flutter/domain/entities/data_list.dart';
import 'package:mechadeli_flutter/domain/entities/map_response.dart';
import 'package:mechadeli_flutter/domain/entities/notice.dart';
import 'package:mechadeli_flutter/domain/entities/order_child.dart';
import 'package:mechadeli_flutter/domain/entities/plan_matrix.dart';
import 'package:mechadeli_flutter/domain/entities/sub_category.dart';

import '../entities/admin.dart';
import '../entities/order.dart';
import '../entities/shop.dart';
import '../entities/option_plan.dart';
import '../entities/shop_area.dart';
import '../entities/shop_plan.dart';
import '../entities/user.dart';

abstract class ApiShopRepository {
  /***
   *********************************
   * shop が利用するAPI
   *********************************
   */

  //shop
  Future<Shop?> registerShop(Map<String, dynamic> data);
  Future<Shop?> loginShop(Map<String, dynamic> data);
  Future<Shop?> updateShop(Map<String, dynamic> data, int shopId);
  Future<List<SubCategory>?> getSubCategory();

  //user
  Future<List<User>?> getUserList();
  Future<List<User>?> getUsersByShopId(int shopId);
  Future<User?> getUserById(int userId);


  //shop plan
  Future<List<ShopPlan>?> getShopPlan(int shopId);
  Future<ShopPlan?> registerShopPlan(Map<String, dynamic> data, int shopId);
  Future<ShopPlan?> updateShopPlan(Map<String, dynamic> data, int shopPlanId);
  //option plan
  Future<List<OptionPlan>?> getOptionPlan(int shopId);
  Future<List<OptionPlan>?> getOptionPlanByShopPlanId(int shopPlanId);
  Future<OptionPlan?> registerOptionPlan(Map<String, dynamic> data, int shopId);
  Future<OptionPlan?> updateOptionPlan(Map<String, dynamic> data, int optionPlanId);
  //matrix
  Future<List<PlanMatrix>?> updatePlanMatrix(Map<String, dynamic> data);
  //order
  Future<List<Order>> getOrderListByShopId(int shopId);
  Future<Order?> getOrder(int orderId);
  Future<Order?> updateOrder(Map<String, dynamic> data, int orderId);
  Future<Order?> makeOrder(Map<String, dynamic> data);
  Future<MapResponse?> deleteShopOrder(int shopId);
  Future<List<OrderChild>?> updateOrderPlans(Map<String, dynamic> data, int orderId);
  Future<List<OrderChild>?> updateOrderOptionPlans(Map<String, dynamic> data, int orderId);
  Future<List<OrderChild>> getOrderChildListByOrderId(int orderId);
}