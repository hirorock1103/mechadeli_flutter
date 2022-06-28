import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show MultipartFile;
import 'package:mechadeli_flutter/domain/entities/admin.dart';

import '../../domain/entities/map_response.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/api_repository.dart';
import '../wrappers/api_clients/api_client.dart';


class ApiRepositoryImpl implements ApiRepository {
  ApiRepositoryImpl(this._apiClient);

  static BuildContext? context;
  final ApiClient _apiClient;

  static const _retryCount = 5;

  void _handleError({required Response<Map<String, dynamic>> response}) {
    //log.d(response.error);
  }

  @override
  Future<User> getUser(String userCode) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<User?> registerUser(Map<String, dynamic> data) {
    // TODO: implement registerUser
    throw UnimplementedError();
  }

  @override
  Future<User?> updateImageTest(int userId, String imagePath) {
    // TODO: implement updateImageTest
    throw UnimplementedError();
  }

  @override
  Future<User?> updateUser(Map<String, dynamic> data) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<List<User>> userList({String? companyCode}) {
    // TODO: implement userList
    throw UnimplementedError();
  }

  @override
  Future<Admin?> registerAdmin(Map<String, dynamic> data) async {
    // TODO: implement registerAdmin
    Admin admin = Admin();

    print(data);
    //
    final response = await _apiClient.registerAdmin(data);

    print(response);

    if (response.isSuccessful) {
      final body = response.body;
      //print(body);
      if (body != null) {
        final result = MapResponse.fromJson(body);
        admin = Admin.fromJson(result.data["user"]);
      }
    }
    return admin;


  }

}
