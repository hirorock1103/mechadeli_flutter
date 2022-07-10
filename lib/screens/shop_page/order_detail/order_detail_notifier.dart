import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/domain/entities/order.dart';
import 'package:mechadeli_flutter/domain/entities/shop.dart';
import 'package:mechadeli_flutter/domain/repositories/api_shop_repository.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../domain/entities/order_child.dart';

part 'order_detail_notifier.freezed.dart';

@freezed
abstract class OrderDetailState with _$OrderDetailState {
  const factory OrderDetailState({
    @Default(0) int count,
    @Default(<Order>[]) List<Order> orderList,
    @Default(<OrderChild>[]) List<OrderChild> orderChildList,
    @Default(MechadeliFlow.cancel) MechadeliFlow currentFlow,
  }) = _OrderDetailState;
}

class OrderDetailNotifier extends StateNotifier<OrderDetailState> with LocatorMixin {
  OrderDetailNotifier({
    required this.context,
  }) : super(const OrderDetailState());

  final BuildContext context;

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
  @override
  void initState() {}

  ///flow select
  void selectFlow( MechadeliFlow flow ){
    state = state.copyWith(currentFlow: flow);
    //情報取得する
  }
  Future<void> getOrderChildListByOrderId(int orderId) async{

    print("getOrderList");
    List<OrderChild> list = await context.read<ApiShopRepository>().getOrderChildListByOrderId(orderId);
    print(list);
    state = state.copyWith(orderChildList: list);

  }

  Future<void> getOrderList() async{

    print("getOrderList");
    int shopId = Shop.me.id;
    List<Order> list = await context.read<ApiShopRepository>().getOrderListByShopId(shopId);
    print(list);
    state = state.copyWith(orderList: list);

  }

  void addCount(){
    state = state.copyWith(count: state.count + 1);
  }



}
