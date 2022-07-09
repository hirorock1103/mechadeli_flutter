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

  @override
  Future<Response<dynamic>> updateShop(Map<String, dynamic> data, int shopId) {
    final $url = '/shop/updateShop/${shopId}';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getSubCategory() {
    final $url = '/shop/getSubCategory';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getShopPlanListByShopId(int shopId) {
    final $url = '/shop/getShopPlanListByShopId/${shopId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> registerShopPlan(Map<String, dynamic> data) {
    final $url = '/shop/registerShopPlan';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateShopPlan(
      Map<String, dynamic> data, int shopPlanId) {
    final $url = '/shop/updateShopPlan/${shopPlanId}';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updatePlanMatrix(Map<String, dynamic> data) {
    final $url = '/shop/updatePlanMatrix';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getOptionPlanListByShopPlanId(int shopPlanId) {
    final $url = '/shop/getOptionPlanListByShopPlanId/${shopPlanId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getOptionPlanListByShopId(int shopId) {
    final $url = '/shop/getOptionPlanListByShopId/${shopId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> registerOptionPlan(Map<String, dynamic> data) {
    final $url = '/shop/registerOptionPlan';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateOptionPlan(
      Map<String, dynamic> data, int optionPlanId) {
    final $url = '/shop/updateOptionPlan/${optionPlanId}';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
