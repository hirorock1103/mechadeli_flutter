// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_matrix.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlanMatrix _$$_PlanMatrixFromJson(Map<String, dynamic> json) =>
    _$_PlanMatrix(
      id: json['id'] as int? ?? 0,
      shop_id: json['shop_id'] as int? ?? 0,
      shop_plan_id: json['shop_plan_id'] as int? ?? 0,
      option_plan_id: json['option_plan_id'] as int? ?? 0,
      created_at: json['created_at'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$_PlanMatrixToJson(_$_PlanMatrix instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shop_id': instance.shop_id,
      'shop_plan_id': instance.shop_plan_id,
      'option_plan_id': instance.option_plan_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
