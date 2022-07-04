import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../domain/repositories/api_admin_repository.dart';

part 'register_notifier.freezed.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState({

    @Default('') String inputName,
    @Default('') String inputEmail,
    @Default('') String inputPw,
    @Default('') String inputPwConfirm,

    @Default(0) int count,
    @Default(MechadeliFlow.cancel) MechadeliFlow currentFlow,
  }) = _RegisterState;
}

class RegisterNotifier extends StateNotifier<RegisterState> with LocatorMixin {
  RegisterNotifier({
    required this.context,
  }) : super(const RegisterState());

  final BuildContext context;

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
  @override
  void initState() {}


  void updatePw(String pw){
    state = state.copyWith(inputPw: pw);
  }
  void updatePwConfirm(String pwConfirm){
    state = state.copyWith(inputPwConfirm: pwConfirm);
  }
  void updateName(String name){
    state = state.copyWith(inputName: name);
  }
  void updateId(String email){
    state = state.copyWith(inputEmail: email);
  }

  void registerUser(){

    Map<String, dynamic> data = {};

    String email = state.inputEmail;
    String name = state.inputName;
    String password = state.inputPw;
    String password_confirmation = state.inputPwConfirm;

    data['email'] = email;
    data['name'] = name;
    data['password'] = password;
    data['password_confirmation'] = password_confirmation;

    context.read<ApiAdminRepository>().registerAdmin(data);

    //success snack barにしとく？


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
