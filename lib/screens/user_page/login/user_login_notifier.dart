import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/domain/entities/user.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../domain/repositories/api_user_repository.dart';

part 'user_login_notifier.freezed.dart';

@freezed
abstract class UserLoginPageState with _$UserLoginPageState {
  const factory UserLoginPageState({
    @Default(0) int count,
    @Default("") String email,
    @Default("") String password,
    @Default("") String loginErrorMessage,
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

  // void setEmail(String email){
  //   state = state.copyWith(email: email);
  // }
  // void setPw(String password){
  //   state = state.copyWith(password: password);
  // }

  Future<void> login(String email, String password) async{

    if(email.isNotEmpty && password.isNotEmpty ){

      Map<String , dynamic> data = { };
      data['email'] = email;
      data['password'] = password;
      final user = await context.read<ApiUserRepository>().loginUser(data);
      if(User.me.id == 0){
        state = state.copyWith(loginErrorMessage: "認証に失敗しました");
      }

    }

  }

  void addCount(){
    state = state.copyWith(count: state.count + 1);
  }



}
