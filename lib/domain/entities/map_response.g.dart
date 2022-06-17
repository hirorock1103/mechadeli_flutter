// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapResponse _$$_MapResponseFromJson(Map<String, dynamic> json) =>
    _$_MapResponse(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      auth: json['auth'] as Map<String, dynamic>? ?? const <String, dynamic>{},
      data: json['data'] as Map<String, dynamic>? ?? const <String, dynamic>{},
      errorCode: json['error_code'] as String? ?? '',
      errors: json['errors'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_MapResponseToJson(_$_MapResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'auth': instance.auth,
      'data': instance.data,
      'error_code': instance.errorCode,
      'errors': instance.errors,
    };
