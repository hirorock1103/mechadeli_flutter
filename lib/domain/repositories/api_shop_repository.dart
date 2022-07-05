
import 'package:mechadeli_flutter/domain/entities/notice.dart';

import '../entities/admin.dart';
import '../entities/order.dart';
import '../entities/shop.dart';
import '../entities/shop_area.dart';
import '../entities/shop_plan.dart';
import '../entities/user.dart';

abstract class ApiShopRepository {
  /***
   *********************************
   * shop が利用するAPI
   *********************************
   */
  Future<Shop?> registerShop(Map<String, dynamic> data);
  Future<Shop?> loginShop(Map<String, dynamic> data);
  Future<Shop?> updateShop(Map<String, dynamic> data, int shopId);
}