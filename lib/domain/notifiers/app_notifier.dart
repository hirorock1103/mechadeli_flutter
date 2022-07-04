import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/src/provider.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../infrastructure/services/shared_preferences_service.dart';

part 'app_notifier.freezed.dart';

enum UserLoginStatus { logging, logout, login }
enum ClientDataType { save, unsave }
enum FacilitatorType { woman, man, robot, original }

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(UserLoginStatus.logout) UserLoginStatus loginStatus,
    // @Default(FacilitatorType.woman) FacilitatorType facilitatorType,
    // @Default(FacilitatorType.woman) FacilitatorType clientFacilitatorType,
    // //企業関連
    // @Default(<User>[]) List<User> companyUsers,
    // @Default(ClientDataType.save) ClientDataType clientDataType,
    @Default(0) int count,
    @Default(0) int adminSelectShopId,


  }) = _AppState;
}

class AppNotifier extends StateNotifier<AppState> with LocatorMixin {
  AppNotifier(this.context) : super(const AppState());

  final BuildContext context;

  @override
  void initState() {
    super.initState();

    //起動時処理
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      print("callback $timeStamp");
      _initialize();
    });
  }

  void updateAdminSelectedShopId(int shopId){
    state = state.copyWith(adminSelectShopId: shopId);
  }
  void updateUserLoginStatus(UserLoginStatus status){
    state = state.copyWith(loginStatus: status);
  }

  @override
  void dispose() {
    super.dispose();
  }

  //init後の処理
  Future<void> _initialize() async {

  }

  void addCount(){
    state = state.copyWith(count: state.count + 1);
  }

}
