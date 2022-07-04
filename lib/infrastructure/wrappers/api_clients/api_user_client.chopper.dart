// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_client.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ApiUserClient extends ApiUserClient {
  _$ApiUserClient([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiUserClient;

  @override
  Future<Response<dynamic>> getShopList({int? user_id}) {
    final $url = '/admin/getShopList2';
    final $params = <String, dynamic>{'user_id': user_id};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> registerUser(Map<String, dynamic> data) {
    final $url = '/api/userRegister';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> userLogin(Map<String, dynamic> data) {
    final $url = '/api/login';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
