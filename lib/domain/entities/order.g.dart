// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      code: json['code'] as String? ?? '',
      user_id: json['user_id'] as int? ?? 0,
      shop_id: json['shop_id'] as int? ?? 0,
      shop_name: json['shop_name'] as String? ?? '',
      first: json['first'] as String? ?? '',
      second: json['second'] as String? ?? '',
      third: json['third'] as String? ?? '',
      ok_date: json['ok_date'] as String? ?? '',
      post_number: json['post_number'] as String? ?? '',
      address: json['address'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      user_first_name: json['user_first_name'] as String? ?? '',
      user_last_name: json['user_last_name'] as String? ?? '',
      main_shop_plan_title: json['main_shop_plan_title'] as String? ?? '',
      main_shop_plan_id: json['main_shop_plan_id'] as int? ?? 0,
      sub_total: json['sub_total'] as int? ?? 0,
      tax: json['tax'] as int? ?? 0,
      tax_rate: json['tax_rate'] as int? ?? 0,
      total: json['total'] as int? ?? 0,
      progress: json['progress'] as int? ?? 0,
      visit_date: json['visit_date'] as String? ?? '',
      visit_start: json['visit_start'] as String? ?? '',
      visit_end: json['visit_end'] as String? ?? '',
      visit_schedule_date: json['visit_schedule_date'] as String? ?? '',
      visit_schedule_starttime:
          json['visit_schedule_starttime'] as String? ?? '',
      visit_schedule_endtime: json['visit_schedule_endtime'] as String? ?? '',
      contents: json['contents'] as String? ?? '',
      fix_price: json['fix_price'] as int? ?? 0,
      fix_price_reason: json['fix_price_reason'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'code': instance.code,
      'user_id': instance.user_id,
      'shop_id': instance.shop_id,
      'shop_name': instance.shop_name,
      'first': instance.first,
      'second': instance.second,
      'third': instance.third,
      'ok_date': instance.ok_date,
      'post_number': instance.post_number,
      'address': instance.address,
      'phone': instance.phone,
      'user_first_name': instance.user_first_name,
      'user_last_name': instance.user_last_name,
      'main_shop_plan_title': instance.main_shop_plan_title,
      'main_shop_plan_id': instance.main_shop_plan_id,
      'sub_total': instance.sub_total,
      'tax': instance.tax,
      'tax_rate': instance.tax_rate,
      'total': instance.total,
      'progress': instance.progress,
      'visit_date': instance.visit_date,
      'visit_start': instance.visit_start,
      'visit_end': instance.visit_end,
      'visit_schedule_date': instance.visit_schedule_date,
      'visit_schedule_starttime': instance.visit_schedule_starttime,
      'visit_schedule_endtime': instance.visit_schedule_endtime,
      'contents': instance.contents,
      'fix_price': instance.fix_price,
      'fix_price_reason': instance.fix_price_reason,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
