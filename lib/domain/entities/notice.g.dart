// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notice _$$_NoticeFromJson(Map<String, dynamic> json) => _$_Notice(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      contents: json['contents'] as String? ?? '',
      to: json['to'] as int? ?? 0,
      status: json['status'] as int? ?? 0,
      updated_at: json['updated_at'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$$_NoticeToJson(_$_Notice instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'contents': instance.contents,
      'to': instance.to,
      'status': instance.status,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
    };
