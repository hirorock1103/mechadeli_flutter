import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../domain/entities/shop.dart';

part 'shop_detail_notifier.freezed.dart';

@freezed
abstract class ShopDetailState with _$ShopDetailState {
  const factory ShopDetailState({
    @Default(false) bool isLoading,
    required Shop shop,
    @Default(0) int count,
    @Default(MechadeliFlow.cancel) MechadeliFlow currentFlow,
  }) = _ShopDetailState;
}

class ShopDetailNotifier extends StateNotifier<ShopDetailState> with LocatorMixin {
  ShopDetailNotifier({
    required this.context,
  }) : super(ShopDetailState( shop: Shop() ));

  final BuildContext context;

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
  @override
  void initState() {}


  void setShopData(Shop shop){
    state = state.copyWith(shop: shop);
  }

  void getReady() async{

    //loading
    state = state.copyWith(isLoading: true);
    // print("getShopList");
    // await Future.delayed(Duration(seconds: 1));
    // final shops = await context.read<ApiRepository>().shopList();
    // state = state.copyWith(shops: shops);
    // print("getUserList");

    //loading
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
