import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechadeli_flutter/domain/entities/notice.dart';
import 'package:mechadeli_flutter/domain/entities/order.dart';
import 'package:mechadeli_flutter/domain/entities/shop.dart';
import 'package:mechadeli_flutter/domain/entities/shop_plan.dart';
import 'package:mechadeli_flutter/domain/entities/user.dart';
import 'package:mechadeli_flutter/domain/repositories/api_shop_repository.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../common/enum.dart';
import '../../../domain/repositories/api_user_repository.dart';

part 'dashboard_notifier.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(0) int count,
    @Default(ApplyStatus.notYet) ApplyStatus applyStatus,
    @Default(<Notice>[]) List<Notice> noticeList,
    @Default(<Order>[]) List<Order> orderList,
    @Default(<ShopPlan>[]) List<ShopPlan> shopPlanList,
    @Default(<User>[]) List<User> userList,
    @Default(MechadeliFlow.cancel) MechadeliFlow currentFlow,
  }) = _DashboardState;
}

class DashboardNotifier extends StateNotifier<DashboardState> with LocatorMixin {
  DashboardNotifier({
    required this.context,
  }) : super(const DashboardState());

  final BuildContext context;

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }


  void getShopPlanList(int shopId) async{
    List<ShopPlan>? list = await context.read<ApiShopRepository>().getShopPlan(shopId);
    state = state.copyWith(shopPlanList: list ?? []);
  }
  void getUserList() async{
    List<User>? list = await context.read<ApiShopRepository>().getUserList();
    state = state.copyWith(userList: list ?? []);
  }


  String getApplyStatusTitle(){
    return ApplyStatusList[state.applyStatus]['title'];
  }
  String getApplyStatusMessage(){

    String message = "";
    switch(state.applyStatus){
      case ApplyStatus.notYet:
        message = "ショップを公開するには基本情報を埋めて審査ボタンを押してください。";
        break;
      case ApplyStatus.confirm:
        message = "只今提出中です";
        break;
      case ApplyStatus.ng:
        message = "審査NGです";
        break;
      case ApplyStatus.ok:
        message = "審査クリアです";
        break;
    }
    return message;
  }


  void checkApplyStatus(){
    int applyStatus = Shop.me.apply_status;
    ApplyStatus status = ApplyStatus.notYet;
    switch(applyStatus){
      case 0 :
        status = ApplyStatus.notYet;
        break;
      case 1 :
        status = ApplyStatus.confirm;
        break;
      case 2 :
        status = ApplyStatus.ng;
        break;
      case 9 :
        status = ApplyStatus.ok;
        break;
    }

    state = state.copyWith(applyStatus: status);

  }

  void getNoticeList() async{
    int to = 1;
    List<Notice> list = await context.read<ApiUserRepository>().getNoticeList(to);
    state = state.copyWith(noticeList: list);
  }

  void getMyOrderList() async{
    List<Order> list = await context.read<ApiUserRepository>().getOrderListByUserId(User.me.id);
    state = state.copyWith(orderList: list);
  }


  @override
  void initState() {}

  ///flow select
  void selectFlow( MechadeliFlow flow ){
    state = state.copyWith(currentFlow: flow);
    print(state);

    //情報取得する


  }

  void getOrderMessages(){


  }



  void addCount(){
    state = state.copyWith(count: state.count + 1);
  }



}
