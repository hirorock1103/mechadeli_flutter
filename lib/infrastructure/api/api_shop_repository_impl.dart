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


}
