// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int? ?? 0,
      first_name: json['first_name'] as String? ?? '',
      last_name: json['last_name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      user_code: json['user_code'] as String? ?? '',
      navigator_image: json['navigator_image'] as String? ?? '',
      user_number: json['user_number'] as String? ?? '',
      use_license_count: json['use_license_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'user_code': instance.user_code,
      'navigator_image': instance.navigator_image,
      'user_number': instance.user_number,
      'use_license_count': instance.use_license_count,
    };
