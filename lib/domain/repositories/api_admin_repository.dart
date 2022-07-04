
import 'package:mechadeli_flutter/domain/entities/notice.dart';

import '../entities/admin.dart';
import '../entities/order.dart';
import '../entities/shop.dart';
import '../entities/shop_area.dart';
import '../entities/shop_plan.dart';
import '../entities/user.dart';

abstract class ApiAdminRepository {
  //admin ( 担当者 )
  // Future<List<Admin>> adminList({String companyCode});
  // Future<Admin> getAdmin(String adminCode);
  // Future<Admin?> updateAdmin(Map<String, dynamic> data);
  /***
   *********************************
   * Adminが利用するAPI
   *********************************
   */

  /**
   * admin
   */
  Future<Admin?> registerAdmin(Map<String, dynamic> data);
  Future<List<Shop>> shopList();

}