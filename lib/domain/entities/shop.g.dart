// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shop _$$_ShopFromJson(Map<String, dynamic> json) => _$_Shop(
      id: json['id'] as int? ?? 0,
      shop_code: json['shop_code'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      shop_owner_name: json['shop_owner_name'] as String? ?? '',
      shop_owner_name_kana: json['shop_owner_name_kana'] as String? ?? '',
      shop_address_post_number:
          json['shop_address_post_number'] as String? ?? '',
      shop_address_pref: json['shop_address_pref'] as String? ?? '',
      shop_address_city: json['shop_address_city'] as String? ?? '',
      shop_address_town: json['shop_address_town'] as String? ?? '',
      shop_address_buildings: json['shop_address_buildings'] as String? ?? '',
      apply_status: json['apply_status'] as int? ?? 0,
      catch_copy: json['catch_copy'] as String? ?? '',
      sales_time_str: json['sales_time_str'] as String? ?? '',
      holiday_str: json['holiday_str'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$_ShopToJson(_$_Shop instance) => <String, dynamic>{
      'id': instance.id,
      'shop_code': instance.shop_code,
      'name': instance.name,
      'email': instance.email,
      'shop_owner_name': instance.shop_owner_name,
      'shop_owner_name_kana': instance.shop_owner_name_kana,
      'shop_address_post_number': instance.shop_address_post_number,
      'shop_address_pref': instance.shop_address_pref,
      'shop_address_city': instance.shop_address_city,
      'shop_address_town': instance.shop_address_town,
      'shop_address_buildings': instance.shop_address_buildings,
      'apply_status': instance.apply_status,
      'catch_copy': instance.catch_copy,
      'sales_time_str': instance.sales_time_str,
      'holiday_str': instance.holiday_str,
      'message': instance.message,
    };
