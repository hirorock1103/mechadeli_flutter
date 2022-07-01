import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_area.freezed.dart';
part 'shop_area.g.dart';

@freezed
class ShopArea with _$ShopArea {
  factory ShopArea({
    @Default(0) int id,
    @Default(0) int shop_id,
    @Default(0) int ken_id,
    @Default(0) int city_id,
    @Default(0) int status,


  }) = _ShopArea;

  ShopArea._();


  factory ShopArea.fromJson(Map<String, dynamic> json) => _$ShopAreaFromJson(json);



}
