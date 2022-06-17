// import 'package:chopper/chopper.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' show MultipartFile;
// import 'package:simple_logger/simple_logger.dart';
//
// import '../../domain/entities/map_response.dart';
// import '../../domain/entities/user.dart';


// class ApiRepositoryImpl implements ApiRepository {
//   ApiRepositoryImpl(this._apiClient);
//
//   static BuildContext? context;
//   final ApiClient _apiClient;
//
//   static const _retryCount = 5;
//
//   void _handleError({required Response<Map<String, dynamic>> response}) {
//     //log.d(response.error);
//   }
//
//   @override
//   Future<List<User>> userList({String? companyCode}) async {
//     // TODO: implement userList
//     final result = await _apiClient.getUserList(company_code: companyCode);
//     List<User> userList = [];
//     try {
//       if (result.isSuccessful) {
//         final body = result.body;
//         if (body != null) {
//           final response = MapResponse.fromJson(body);
//           final dataList = DataList.fromJson(response.data['data_list']);
//           final users = dataList.data.map((e) {
//             var user = User.fromJson(e);
//             return user;
//           });
//           userList = users.toList();
//         }
//         return userList;
//       }
//     } on Exception catch (e) {
//       return userList;
//     }
//     //throw UnimplementedError();
//     return userList;
//   }
//
//   @override
//   Future userRegister(String deviceCode) {
//     // TODO: implement userRegister
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<User> getUser(String userCode) async {
//     // TODO: implement getUser
//
//     print("===getUser===");
//     print("userCode:$userCode");
//
//     // if(userCode != null && userCode.isNotEmpty){
//     //   return User();
//     // }
//
//     Map<String, dynamic> data = {"user_code": userCode};
//     final response = await _apiClient.getUser(data);
//
//     User user = User();
//
//     try {
//       if (response.isSuccessful) {
//         //
//         final body = response.body;
//
//         if (body != null) {
//           final result = MapResponse.fromJson(body);
//           print(userCode);
//           print(result.message);
//
//           user = User.fromJson(result.data['user']);
//
//           User.me = user;
//
//           //result.errors?.forEach((element) {print(element);});
//           return user;
//         }
//       }
//     } on Exception catch (e) {
//       return user;
//     }
//
//     return user;
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<Company> getCompany(String companyCode) async {
//     print(companyCode);
//     Company company = Company();
//     //処理
//     Map<String, dynamic> data = {"company_code": companyCode};
//     final response = await _apiClient.getCompany(data);
//
//     if (response.isSuccessful) {
//       final body = response.body;
//       // print(body['status']);
//       //statusのチェック（OK or NG)
//       if (body['status'] != null) {
//         if (body['status'] == "OK") {
//           if (body != null) {
//             final result = MapResponse.fromJson(body);
//             print(companyCode);
//             print(result.message);
//             company = Company.fromJson(result.data['company']);
//             //result.errors?.forEach((element) {print(element);});
//             return company;
//           }
//         } else {
//           // final result = ArrayResponse.fromJson(body);
//           // print(result);
//           print(body['error_code']);
//           //エラーの時の対応
//
//         }
//       }
//     }
//
//     return company;
//   }
//
//   @override
//   Future<User?> updateUser(Map<String, dynamic> data) async {
//     //
//     final response = await _apiClient.updateUser(data);
//     User? user = null;
//     print(response);
//
//     if (response.isSuccessful) {
//       final body = response.body;
//       print(body);
//       if (body != null) {
//         final result = MapResponse.fromJson(body);
//         user = User.fromJson(result.data["user"]);
//       }
//     }
//     return user;
//   }
//
//   @override
//   Future<User?> updateImageTest(int userId, String imagePath) async {
//     User user = User();
//     final imageFile = await MultipartFile.fromPath("image", imagePath);
//     final response =
//         await _apiClient.uploadOriginalNavigator(userId, imageFile);
//
//     if (response.isSuccessful) {
//       final body = response.body;
//       if (body != null) {
//         final result = MapResponse.fromJson(body);
//         user = User.fromJson(result.data["user"]);
//       }
//     }
//     return user;
//   }
//
//   @override
//   Future<SummeryReportDev?> uploadOcrDev(String imagePath) async {
//     print("uploadOCR");
//     SummeryReportDev data = SummeryReportDev();
//     final imageFile = await MultipartFile.fromPath("image", imagePath);
//     final response = await _apiClient.uploadOcr(imageFile);
//     print("get response");
//
//     print(response);
//
//     try {
//       if (response.isSuccessful) {
//         final body = response.body;
//         if (body['status'] == "OK") {
//           final result = MapResponse.fromJson(body);
//           if (result.data['result2'] != null) {
//             data = SummeryReportDev.fromJson(result.data['result2']);
//             // data = data.copyWith(path: result.data['path']);
//             // data = data.copyWith(pre: result.data['pre']);
//             // data = data.copyWith(ocr: result.data['ocr']);
//             print("OCR 正常終了");
//             return data;
//           }
//         }
//       }
//     } on Exception catch (e) {
//       print("OCR EXCEPTION");
//       print(e);
//       return data;
//     }
//     print("OCR 異常終了");
//     return data;
//   }
//
//   @override
//   Future<SummeryReport?> uploadOcr(String imagePath) async {
//     print("uploadOCR");
//     SummeryReport data = SummeryReport();
//     final imageFile = await MultipartFile.fromPath("image", imagePath);
//     final response = await _apiClient.uploadOcr(imageFile);
//
//     try {
//       if (response.isSuccessful) {
//         final body = response.body;
//         if (body['status'] == "OK") {
//           final result = MapResponse.fromJson(body);
//
//           if (result.data['result'] != null) {
//             // SummeryReportDev dev = SummeryReportDev();
//             // dev = SummeryReportDev.fromJson(result.data['result2']);
//             data = SummeryReport.fromJson(result.data['result']);
//             data = data.copyWith(path: result.data['path']);
//             data = data.copyWith(pre: result.data['pre']);
//             data = data.copyWith(ocr: result.data['ocr']);
//           }
//           return data;
//         }
//       }
//     } on Exception catch (e) {
//       return data;
//     }
//     return data;
//   }
//
//   @override
//   Future<User?> registerUser(Map<String, dynamic> data) async {
//     // TODO: implement registerUser
//     User user = User();
//
//     final response = await _apiClient.registerUser(data);
//     print(response.body);
//     if (response.isSuccessful) {
//       final body = response.body;
//       // print(body['status']);
//       //statusのチェック（OK or NG)
//       if (body['status'] != null) {
//         if (body['status'] == "OK") {
//           if (body != null) {
//             final result = MapResponse.fromJson(body);
//             print(result.message);
//             user = User.fromJson(result.data['user']);
//             //result.errors?.forEach((element) {print(element);});
//             return user;
//           }
//         } else {
//           // final result = ArrayResponse.fromJson(body);
//           // print(result);
//           print(body['error_code']);
//           //エラーの時の対応
//
//         }
//       }
//     }
//
//     return user;
//   }
//
// }
