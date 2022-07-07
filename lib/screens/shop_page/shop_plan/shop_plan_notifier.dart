import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechadeli_flutter/domain/entities/notice.dart';
import 'package:mechadeli_flutter/domain/entities/order.dart';
import 'package:mechadeli_flutter/domain/entities/shop.dart';
import 'package:mechadeli_flutter/domain/entities/sub_category.dart';
import 'package:mechadeli_flutter/domain/entities/user.dart';
import 'package:mechadeli_flutter/domain/repositories/api_shop_repository.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../common/enum.dart';
import '../../../domain/entities/shop_plan.dart';
import '../../../domain/repositories/api_user_repository.dart';

part 'shop_plan_notifier.freezed.dart';

@freezed
abstract class ShopPlanState with _$ShopPlanState {
  const factory ShopPlanState({
    @Default(0) int count,
    @Default(false) bool planDisplayStatus,
    // @Default(ApplyStatus.notYet) ApplyStatus applyStatus,
    // @Default(<Notice>[]) List<Notice> noticeList,
    // @Default(<Order>[]) List<Order> orderList,
    @Default(<ShopPlan>[]) List<ShopPlan> shopPlanList,
    @Default(<SubCategory>[]) List<SubCategory> subCategoryList,
    // @Default(MechadeliFlow.cancel) MechadeliFlow currentFlow,
  }) = _ShopPlanState;
}

class ShopPlanNotifier extends StateNotifier<ShopPlanState> with LocatorMixin {
  ShopPlanNotifier({
    required this.context,
  }) : super(const ShopPlanState());

  final BuildContext context;

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  void switchPlanStatus(bool value){
    state = state.copyWith(planDisplayStatus: value) ;
  }

  void getSubCategory() async{
    print("subCategory");
    final list = await context.read<ApiShopRepository>().getSubCategory();
    print(list);
    state = state.copyWith(subCategoryList: list ?? []);
  }

  void registerShopPlan(Map<String, dynamic> data, int shopId) async{

    final plan = await context.read<ApiShopRepository>().registerShopPlan(data, shopId);
    print(plan);
    this.getShopPlanList();

  }
  void updateShopPlan(Map<String, dynamic> data, int planId) async{

    final plan = await context.read<ApiShopRepository>().updateShopPlan(data, planId);
    print(plan);
    this.getShopPlanList();

  }

  void getShopPlanList() async{

    List<ShopPlan>? shopPlanList = [];
    int shopId = Shop.me.id;
    shopPlanList = await context.read<ApiShopRepository>().getShopPlan(shopId);


    // ShopPlan plan = ShopPlan();
    // plan = plan.copyWith(plan_title: "速報！季節の盛り合わせ");
    // plan = plan.copyWith(plan_price: 4300);
    // shopPlanList.add(plan);
    //
    // ShopPlan plan2 = ShopPlan();
    // plan2 = plan2.copyWith(plan_title: "まじで！季節の盛り合わせ");
    // plan2 = plan2.copyWith(plan_price: 9300);
    // shopPlanList.add(plan2);
    //
    // ShopPlan plan3 = ShopPlan();
    // plan3 = plan3.copyWith(plan_title: "まじで！季節の盛り合わせ");
    // plan3 = plan3.copyWith(plan_price: 9300);
    // shopPlanList.add(plan3);
    //
    // ShopPlan plan4 = ShopPlan();
    // plan4 = plan4.copyWith(plan_title: "まじで！季節の盛り合わせ");
    // plan4 = plan4.copyWith(plan_price: 9400);
    // shopPlanList.add(plan4);

    state = state.copyWith(shopPlanList: shopPlanList ?? []);

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
