// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_shop_client.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ApiShopClient extends ApiShopClient {
  _$ApiShopClient([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiShopClient;

  @override
  Future<Response<dynamic>> registerShop(Map<String, dynamic> data) {
    final $url = '/shop/userRegister';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> shopLogin(Map<String, dynamic> data) {
    final $url = '/shop/login';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
