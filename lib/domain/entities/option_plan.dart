import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_plan.freezed.dart';
part 'option_plan.g.dart';

@freezed
class OptionPlan with _$OptionPlan {
  factory OptionPlan({
    @Default(0) int id,
    @Default(0) int shop_id,
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


  }) = _OptionPlan;

  OptionPlan._();


  factory OptionPlan.fromJson(Map<String, dynamic> json) => _$OptionPlanFromJson(json);



}
