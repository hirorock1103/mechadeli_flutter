
import '../entities/user.dart';

abstract class ApiRepository {
  //user ( 担当者 )
  Future<List<User>> userList({String companyCode});

  Future<User> getUser(String userCode);

  Future<User?> updateUser(Map<String, dynamic> data);

  Future<User?> registerUser(Map<String, dynamic> data);

  Future<User?> updateImageTest(int userId, String imagePath);
}