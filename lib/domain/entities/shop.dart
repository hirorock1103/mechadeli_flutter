import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop.freezed.dart';
part 'shop.g.dart';

@freezed
class Shop with _$Shop {
  factory Shop({
    @Default(0) int id,
    @Default('') String shop_code,
    @Default('') String name,
    @Default('') String email,
    @Default('') String shop_owner_name,
    @Default('') String shop_owner_name_kana,
    @Default('') String shop_address_post_number,
    @Default('') String shop_address_pref,
    @Default('') String shop_address_city,
    @Default('') String shop_address_town,
    @Default('') String shop_address_buildings,
    @Default(0) int apply_status,
    @Default('') String catch_copy,
    @Default('') String sales_time_str,
    @Default('') String holiday_str,
    @Default('') String message,


  }) = _Shop;

  Shop._();

  static Shop? _me;

  static set me(Shop shop) => _me = shop;

  static Shop get me => _me ?? Shop();

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);



}
