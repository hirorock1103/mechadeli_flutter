import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin.freezed.dart';
part 'admin.g.dart';

@freezed
class Admin with _$Admin {
  factory Admin({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String email,


  }) = _Admin;

  Admin._();

  static Admin? _me;

  static set me(Admin admin) => _me = admin;

  static Admin get me => _me ?? Admin();

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);



}
