import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  SharedPreferencesService(this.sharedPreferences);

  final SharedPreferences sharedPreferences;

  static const apiTokenKey = 'apiToken';
  static const apiCompanyTokenKey = 'apiCompanyToken';
  static const apiUserTokenKey = 'apiUserToken';
  static const uuidKey = 'uuid';
  static const companyCodeKey = 'companyCode';
  static const userCodeKey = 'userCode';

  Future<void> saveCompanyCode(String companyCode) async{
    await sharedPreferences.setString(companyCodeKey, companyCode);
  }
  Future<void> saveUserCode(String userCode) async{
    await sharedPreferences.setString(userCodeKey, userCode);
  }
  String? getUserCode() {
    return sharedPreferences.getString(userCodeKey);
  }
  String? getCompanyCode() {
    return sharedPreferences.getString(companyCodeKey);
  }
  Future<void> clear() async{
    sharedPreferences.clear();
  }

  //api key (company)
  Future<void> saveApiCompanyToken(String token) async {
    await sharedPreferences.setString(apiCompanyTokenKey, token);
  }
  Future<String?> getApiCompanyToken() async {
    String? token = await sharedPreferences.getString(apiCompanyTokenKey);
    return token;
  }
  //api key (user)
  Future<void> saveApiUserToken(String token) async {
    await sharedPreferences.setString(apiUserTokenKey, token);
  }
  Future<String?> getApiUserToken() async {
    String? token = await sharedPreferences.getString(apiUserTokenKey);
    return token;
  }
  //other
  Future<void> saveApiToken(String token) async {
    await sharedPreferences.setString(apiTokenKey, token);
  }
  Future<String?> getApiToken(String token) async {
    String? token = await sharedPreferences.getString(apiTokenKey);
    return token;
  }

  bool isUserRegistered() {
    final token = sharedPreferences.getString(apiTokenKey);
    return token != null && token.isNotEmpty;
  }

  Future<void> saveUuid(String uuid) async {
    await sharedPreferences.setString(uuidKey, uuid);
  }

  String getUuid() {
    final uuid = sharedPreferences.getString(uuidKey);
    return uuid ?? "";
  }


}
