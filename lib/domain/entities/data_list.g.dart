// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataList _$$_DataListFromJson(Map<String, dynamic> json) => _$_DataList(
      current_page: json['current_page'] as int? ?? 0,
      first_page_url: json['first_page_url'] as String? ?? '',
      last_page_url: json['last_page_url'] as String? ?? '',
      total: json['total'] as int? ?? 0,
      from: json['from'] as int? ?? 0,
      to: json['to'] as int? ?? 0,
      data: json['data'] as List<dynamic>? ?? const <dynamic>[],
      errors: json['errors'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_DataListToJson(_$_DataList instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'first_page_url': instance.first_page_url,
      'last_page_url': instance.last_page_url,
      'total': instance.total,
      'from': instance.from,
      'to': instance.to,
      'data': instance.data,
      'errors': instance.errors,
    };
