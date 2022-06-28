// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ApiClient extends ApiClient {
  _$ApiClient([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiClient;

  @override
  Future<Response<dynamic>> getUserList({String? company_code}) {
    final $url = '/app/user/index';
    final $params = <String, dynamic>{'company_code': company_code};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getUser(Map<String, dynamic> data) {
    final $url = '/app/user/show';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateUser(Map<String, dynamic> data) {
    final $url = '/app/user/update';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> registerUser(Map<String, dynamic> data) {
    final $url = '/app/user/register';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> userLogin(Map<String, dynamic> data) {
    final $url = '/app/login';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getCompany(Map<String, dynamic> data) {
    final $url = '/app/company/show';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getCompanyAboutMe(Map<String, dynamic> data) {
    final $url = '/app/company/me';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> companyLogin(Map<String, dynamic> data) {
    final $url = '/app/company/login';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> uploadOriginalNavigator(
      int user_id, MultipartFile? image) {
    final $url = '/app/user/updateNavigaror';
    final $parts = <PartValue>[
      PartValue<int>('user_id', user_id),
      PartValueFile<MultipartFile?>('image', image)
    ];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> uploadOcr(MultipartFile? image) {
    final $url = '/app/ocr/execute';
    final $parts = <PartValue>[PartValueFile<MultipartFile?>('image', image)];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getClientList({int? company_id}) {
    final $url = '/app/client/index_with_license';
    final $params = <String, dynamic>{'company_id': company_id};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteClient(Map<String, dynamic> data) {
    final $url = '/app/client/delete';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> releaseClient(Map<String, dynamic> data) {
    final $url = '/app/client/release';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateClient(
      Map<String, dynamic> data, int clientId) {
    final $url = '/app/client/${clientId}/update';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getClient(int clientId) {
    final $url = '/app/client/${clientId}/show';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> registerClient(Map<String, dynamic> data) {
    final $url = '/app/client/register';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> uploadNavigatorImage(
      int client_id, MultipartFile? image) {
    final $url = '/app/client/updateNavigator';
    final $parts = <PartValue>[
      PartValue<int>('client_id', client_id),
      PartValueFile<MultipartFile?>('image', image)
    ];
    final $request =
        Request('POST', $url, client.baseUrl, parts: $parts, multipart: true);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getReportList({int? clientId}) {
    final $url = '/app/report/index?client_id=${clientId}';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> registerReport(Map<String, dynamic> data) {
    final $url = '/app/report/register';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getReport(int? reportId) {
    final $url = '/app/report/${reportId}/show';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateReport(
      Map<String, dynamic> data, int reportId) {
    final $url = '/app/report/${reportId}/update';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteReport(Map<String, dynamic> data) {
    final $url = '/app/report/delete';
    final $body = data;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getBusinessData() {
    final $url = '/app/client/graph/comparisons';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getInhouseData(int companyClientId) {
    final $url =
        '/app/client/graph/inhome?company_client_id=${companyClientId}';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getOtherData(int companyClientId) {
    final $url = '/app/client/graph/other?company_client_id=${companyClientId}';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getStarData(int companyClientId) {
    final $url = '/app/client/graph/star?company_client_id=${companyClientId}';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }

}
