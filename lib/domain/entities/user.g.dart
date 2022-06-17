// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int? ?? 0,
      user_name: json['user_name'] as String? ?? '',
      company_id: json['company_id'] as int? ?? 0,
      user_code: json['user_code'] as String? ?? '',
      navigator_image: json['navigator_image'] as String? ?? '',
      user_number: json['user_number'] as String? ?? '',
      use_license_count: json['use_license_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'user_name': instance.user_name,
      'company_id': instance.company_id,
      'user_code': instance.user_code,
      'navigator_image': instance.navigator_image,
      'user_number': instance.user_number,
      'use_license_count': instance.use_license_count,
    };
