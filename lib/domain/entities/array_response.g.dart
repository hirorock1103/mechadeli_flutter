// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'array_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArrayResponse _$$_ArrayResponseFromJson(Map<String, dynamic> json) =>
    _$_ArrayResponse(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      auth: json['auth'] as Map<String, dynamic>? ?? const <String, dynamic>{},
      data: json['data'] as List<dynamic>? ?? const <dynamic>[],
      errorCode: json['error_code'] as String? ?? '',
      errors: json['errors'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_ArrayResponseToJson(_$_ArrayResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'auth': instance.auth,
      'data': instance.data,
      'error_code': instance.errorCode,
      'errors': instance.errors,
    };
