// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopPlan _$$_ShopPlanFromJson(Map<String, dynamic> json) => _$_ShopPlan(
      id: json['id'] as int? ?? 0,
      shop_id: json['shop_id'] as int? ?? 0,
      main_category_id: json['main_category_id'] as int? ?? 0,
      sub_category_id: json['sub_category_id'] as int? ?? 0,
      plan_price: json['plan_price'] as int? ?? 0,
      status: json['status'] as int? ?? 0,
      about: json['about'] as String? ?? '',
      plan_title: json['plan_title'] as String? ?? '',
      sales_point: json['sales_point'] as String? ?? '',
      details: json['details'] as String? ?? '',
      tanni: json['tanni'] as String? ?? '',
      img_1: json['img_1'] as String? ?? '',
      img_2: json['img_2'] as String? ?? '',
      img_3: json['img_3'] as String? ?? '',
      img_4: json['img_4'] as String? ?? '',
      img_5: json['img_5'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$_ShopPlanToJson(_$_ShopPlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shop_id': instance.shop_id,
      'main_category_id': instance.main_category_id,
      'sub_category_id': instance.sub_category_id,
      'plan_price': instance.plan_price,
      'status': instance.status,
      'about': instance.about,
      'plan_title': instance.plan_title,
      'sales_point': instance.sales_point,
      'details': instance.details,
      'tanni': instance.tanni,
      'img_1': instance.img_1,
      'img_2': instance.img_2,
      'img_3': instance.img_3,
      'img_4': instance.img_4,
      'img_5': instance.img_5,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
