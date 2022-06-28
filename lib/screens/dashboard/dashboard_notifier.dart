import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../common/enum.dart';

part 'dashboard_notifier.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(0) int count,
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

  @override
  void initState() {}

  ///flow select
  void selectFlow( MechadeliFlow flow ){
    state = state.copyWith(currentFlow: flow);
    print(state);

    //情報取得する


  }



  void addCount(){
    state = state.copyWith(count: state.count + 1);
  }



}
