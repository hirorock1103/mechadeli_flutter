import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechadeli_flutter/domain/entities/notice.dart';
import 'package:mechadeli_flutter/domain/entities/order.dart';
import 'package:mechadeli_flutter/domain/entities/shop.dart';
import 'package:mechadeli_flutter/domain/entities/user.dart';
import 'package:mechadeli_flutter/domain/repositories/api_shop_repository.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../common/enum.dart';
import '../../../domain/repositories/api_user_repository.dart';

part 'basic_information_notifier.freezed.dart';

@freezed
abstract class BasicInformationState with _$BasicInformationState {
  const factory BasicInformationState({
    @Default(0) int count,
    // @Default(ApplyStatus.notYet) ApplyStatus applyStatus,
    // @Default(<Notice>[]) List<Notice> noticeList,
    // @Default(<Order>[]) List<Order> orderList,
    // @Default(MechadeliFlow.cancel) MechadeliFlow currentFlow,
  }) = _BasicInformationState;
}

class BasicInformationNotifier extends StateNotifier<BasicInformationState> with LocatorMixin {
  BasicInformationNotifier({
    required this.context,
  }) : super(const BasicInformationState());

  final BuildContext context;

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }


  void updateShop(Map<String, dynamic> data, int shopId ) async{
    print("updateShop");
    print(data);
    final shop = await context.read<ApiShopRepository>().updateShop(data, shopId);
    print("update:$shop");
    //TODO :



  }



  @override
  void initState() {}


  void getOrderMessages(){


  }




}
