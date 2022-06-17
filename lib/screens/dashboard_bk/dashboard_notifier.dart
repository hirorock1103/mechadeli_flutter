import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'dashboard_notifier.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(0) int count,
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

  void addCount(){
    state = state.copyWith(count: state.count + 1);
  }



}
