
import 'package:mechadeli_flutter/domain/entities/notice.dart';

import '../entities/admin.dart';
import '../entities/order.dart';
import '../entities/shop.dart';
import '../entities/shop_area.dart';
import '../entities/shop_plan.dart';
import '../entities/user.dart';

abstract class ApiUserRepository {
  //admin ( 担当者 )
  // Future<List<Admin>> adminList({String companyCode});
  // Future<Admin> getAdmin(String adminCode);
  // Future<Admin?> updateAdmin(Map<String, dynamic> data);
  /***
   *********************************
   * Adminが利用するAPI
   *********************************
   */
  /***
   *********************************
   * shop が利用するAPI
   *********************************
   */
  /***
   *********************************
   * User が利用するAPI
   *********************************
   */


  /**
   * admin
   */
  Future<Admin?> registerAdmin(Map<String, dynamic> data);

  /**
   * shop
   */
  Future<List<Shop>> shopList();
  Future<List<ShopArea>> getShopAreaListByShopId(int shopId);
  Future<List<ShopPlan>> getShopPlanListByShopId(int shopId);
  Future<List<Order>> getOrderListByUserId(int userId);
  Future<List<Notice>> getNoticeList(int to);

  /**
   *
   */
  Future<List<User>> userList({String companyCode});
  Future<User> getUser(String userCode);
  Future<User?> updateUser(Map<String, dynamic> data);
  Future<User?> registerUser(Map<String, dynamic> data);
  Future<User?> updateImageTest(int userId, String imagePath);
}