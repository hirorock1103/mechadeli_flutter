import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @Default(0) int id,
    @Default('') String first_name,
    @Default('') String last_name,
    @Default('') String email,
    @Default('') String address,
    @Default('') String phone,
    @Default('') String password,


  }) = _User;

  User._();

  static User? _me;

  static set me(User user) => _me = user;

  static User get me => _me ?? User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);



}
