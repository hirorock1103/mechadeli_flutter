// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderChild _$$_OrderChildFromJson(Map<String, dynamic> json) =>
    _$_OrderChild(
      id: json['id'] as int? ?? 0,
      order_id: json['order_id'] as int? ?? 0,
      plan_id: json['plan_id'] as int? ?? 0,
      option_plan_id: json['option_plan_id'] as int? ?? 0,
      type: json['type'] as int? ?? 0,
      shop_plan_title: json['shop_plan_title'] as String? ?? "",
      option_plan_title: json['option_plan_title'] as String? ?? "",
      shop_plan_title_current: json['shop_plan_title_current'] as String? ?? "",
      option_plan_title_current:
          json['option_plan_title_current'] as String? ?? "",
      price: json['price'] as int? ?? 0,
      amount: json['amount'] as int? ?? 0,
      created_at: json['created_at'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderChildToJson(_$_OrderChild instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.order_id,
      'plan_id': instance.plan_id,
      'option_plan_id': instance.option_plan_id,
      'type': instance.type,
      'shop_plan_title': instance.shop_plan_title,
      'option_plan_title': instance.option_plan_title,
      'shop_plan_title_current': instance.shop_plan_title_current,
      'option_plan_title_current': instance.option_plan_title_current,
      'price': instance.price,
      'amount': instance.amount,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
