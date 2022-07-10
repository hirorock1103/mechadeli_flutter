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

part 'schedule_notifier.freezed.dart';

@freezed
abstract class ScheduleState with _$ScheduleState {
  const factory ScheduleState({
    @Default(0) int count,
    @Default(<Order>[]) List<Order> orderList,
    @Default(MechadeliFlow.cancel) MechadeliFlow currentFlow,
  }) = _ScheduleState;
}

class ScheduleNotifier extends StateNotifier<ScheduleState> with LocatorMixin {
  ScheduleNotifier({
    required this.context,
  }) : super(const ScheduleState());

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

  Future<void> getOrderList() async{

    print("getOrderList");
    int shopId = Shop.me.id;
    print(shopId.toString());
    List<Order> list = await context.read<ApiShopRepository>().getOrderListByShopId(shopId);
    print(list);
    state = state.copyWith(orderList: list);

  }

  void addCount(){
    state = state.copyWith(count: state.count + 1);
  }



}
