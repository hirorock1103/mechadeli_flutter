import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String code,
    @Default(0) int user_id ,
    @Default(0) int shop_id,
    @Default('') String shop_name,
    @Default('') String first,
    @Default('') String second,
    @Default('') String third,
    @Default('') String ok_date,
    @Default('') String post_number,
    @Default('') String address,
    @Default('') String phone,
    // @Default('') String first_name,
    // @Default('') String last_name,
    @Default('') String user_first_name,
    @Default('') String user_last_name,
    @Default('') String main_shop_plan_title,//動的に作成取得
    @Default(0) int main_shop_plan_id,//動的に作成取得
    // @Default(0) int main_shop_plan_order_child_id,//動的に作成取得
    // @Default('') String sub_total,
    @Default(0) int sub_total,
    @Default(0) int tax,
    @Default(0) int tax_rate,
    // @Default('') String tax_rate,
    @Default(0) int total,
    @Default(0) int progress,
    @Default('') String visit_date,
    @Default('') String visit_start,
    @Default('') String visit_end,
    @Default('') String visit_schedule_date,
    @Default('') String visit_schedule_starttime,
    @Default('') String visit_schedule_endtime,
    @Default('') String contents,
    @Default(0) int fix_price,
    @Default('') String fix_price_reason,
    @Default('') String created_at,
    @Default('') String updated_at,


  }) = _Order;

  Order._();

  // static Order? _me;
  //
  // static set me(Order order) => _me = order;
  //
  // static Order get me => _me ?? Order();

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);



}
