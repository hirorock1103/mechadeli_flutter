
import '../entities/admin.dart';
import '../entities/user.dart';

abstract class ApiRepository {
  //admin ( 担当者 )
  // Future<List<Admin>> adminList({String companyCode});
  // Future<Admin> getAdmin(String adminCode);
  // Future<Admin?> updateAdmin(Map<String, dynamic> data);
  Future<Admin?> registerAdmin(Map<String, dynamic> data);

  Future<List<User>> userList({String companyCode});
  Future<User> getUser(String userCode);
  Future<User?> updateUser(Map<String, dynamic> data);
  Future<User?> registerUser(Map<String, dynamic> data);
  Future<User?> updateImageTest(int userId, String imagePath);
}