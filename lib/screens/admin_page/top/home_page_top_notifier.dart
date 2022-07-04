import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../domain/entities/shop.dart';
import '../../../domain/repositories/api_admin_repository.dart';

part 'home_page_top_notifier.freezed.dart';

@freezed
abstract class HomePageTopState with _$HomePageTopState {
  const factory HomePageTopState({
    @Default(false) bool isLoading,
    @Default(<Shop>[]) List<Shop> shops,
    @Default(0) int count,
    @Default(MechadeliFlow.cancel) MechadeliFlow currentFlow,
  }) = _HomePageTopState;
}

class HomePageTopNotifier extends StateNotifier<HomePageTopState> with LocatorMixin {
  HomePageTopNotifier({
    required this.context,
  }) : super(const HomePageTopState());

  final BuildContext context;

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
  @override
  void initState() {}


  void getReady() async{

    //loading
    state = state.copyWith(isLoading: true);
    print("getShopList");
    await Future.delayed(Duration(seconds: 1));
    final shops = await context.read<ApiAdminRepository>().shopList();
    state = state.copyWith(shops: shops);
    print("getUserList");

    //loading
    state = state.copyWith(isLoading: false);

  }

  void getShopList() async{
    state = state.copyWith(isLoading: true);
    print("getShopList");
    await Future.delayed(Duration(seconds: 1));
    final shops = await context.read<ApiAdminRepository>().shopList();
    state = state.copyWith(shops: shops);


    state = state.copyWith(isLoading: false);
  }

  ///flow select
  void selectFlow( MechadeliFlow flow ){
    state = state.copyWith(currentFlow: flow);

    //情報取得する


  }

  void addCount(){
    state = state.copyWith(count: state.count + 1);
  }



}
