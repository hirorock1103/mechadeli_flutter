import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_plan.freezed.dart';
part 'shop_plan.g.dart';

@freezed
class ShopPlan with _$ShopPlan {
  factory ShopPlan({
    @Default(0) int id,
    @Default(0) int shop_id,
    @Default(0) int main_category_id,
    @Default(0) int sub_category_id,
    @Default(0) int plan_price,
    @Default(0) int status,
    @Default('') String about,
    @Default('') String plan_title,
    @Default('') String sales_point,
    @Default('') String details,
    @Default('') String tanni,
    @Default('') String img_1,
    @Default('') String img_2,
    @Default('') String img_3,
    @Default('') String img_4,
    @Default('') String img_5,
    @Default('') String created_at,
    @Default('') String updated_at,


  }) = _ShopPlan;

  ShopPlan._();


  factory ShopPlan.fromJson(Map<String, dynamic> json) => _$ShopPlanFromJson(json);



}
