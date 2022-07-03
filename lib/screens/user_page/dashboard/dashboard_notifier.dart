import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechadeli_flutter/domain/entities/notice.dart';
import 'package:mechadeli_flutter/domain/entities/order.dart';
import 'package:mechadeli_flutter/domain/entities/user.dart';
import 'package:mechadeli_flutter/domain/repositories/api_repository.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../common/enum.dart';

part 'dashboard_notifier.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(0) int count,
    @Default(<Notice>[]) List<Notice> noticeList,
    @Default(<Order>[]) List<Order> orderList,
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

  void getNoticeList() async{
    int to = 1;
    List<Notice> list = await context.read<ApiRepository>().getNoticeList(to);
    state = state.copyWith(noticeList: list);
  }

  void getMyOrderList() async{
    List<Order> list = await context.read<ApiRepository>().getOrderListByUserId(User.me.id);
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
