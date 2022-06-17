import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @Default(0) int id,
    @Default('') String user_name,
    @Default(0) int company_id,
    @Default('') String user_code,
    @Default('') String navigator_image,
    @Default('') String user_number,
    @Default(0) int use_license_count,


  }) = _User;

  User._();

  static User? _me;

  static set me(User user) => _me = user;

  static User get me => _me ?? User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);



}
