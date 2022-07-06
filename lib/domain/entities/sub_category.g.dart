// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubCategory _$$_SubCategoryFromJson(Map<String, dynamic> json) =>
    _$_SubCategory(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      main_category_id: json['main_category_id'] as int? ?? 0,
      main_category_title: json['main_category_title'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
    );

Map<String, dynamic> _$$_SubCategoryToJson(_$_SubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'main_category_id': instance.main_category_id,
      'main_category_title': instance.main_category_title,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
    };
