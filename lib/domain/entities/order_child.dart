import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_child.freezed.dart';
part 'order_child.g.dart';

@freezed
class OrderChild with _$OrderChild {
  factory OrderChild({
    @Default(0) int id,
    @Default(0) int order_id,
    @Default(0) int plan_id,
    @Default(0) int option_plan_id,
    @Default(0) int type,
    @Default("") String shop_plan_title,
    @Default("") String option_plan_title,
    @Default("") String shop_plan_title_current,
    @Default("") String option_plan_title_current,
    @Default(0) int price,
    @Default(0) int amount,
    @Default('') String created_at,
    @Default('') String updated_at,


  }) = _OrderChild;

  OrderChild._();

  // static OrderChild? _me;
  //
  // static set me(OrderChild order) => _me = order;
  //
  // static OrderChild get me => _me ?? OrderChild();

  factory OrderChild.fromJson(Map<String, dynamic> json) => _$OrderChildFromJson(json);



}
