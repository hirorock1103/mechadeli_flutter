import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:state_notifier/state_notifier.dart';

part 'user_login_notifier.freezed.dart';

@freezed
abstract class UserLoginPageState with _$UserLoginPageState {
  const factory UserLoginPageState({
    @Default(0) int count,
    @Default(MechadeliFlow.cancel) MechadeliFlow currentFlow,
  }) = _UserLoginPageState;
}

class UserLoginPageNotifier extends StateNotifier<UserLoginPageState> with LocatorMixin {
  UserLoginPageNotifier({
    required this.context,
  }) : super(const UserLoginPageState());

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

  void addCount(){
    state = state.copyWith(count: state.count + 1);
  }



}
