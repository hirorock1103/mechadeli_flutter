import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_matrix.freezed.dart';
part 'plan_matrix.g.dart';

@freezed
class PlanMatrix with _$PlanMatrix{
  factory PlanMatrix({
    @Default(0) int id,
    @Default(0) int shop_id,
    @Default(0) int shop_plan_id,
    @Default(0) int option_plan_id,
    @Default('') String created_at,
    @Default('') String updated_at,


  }) = _PlanMatrix;

  PlanMatrix._();


  factory PlanMatrix.fromJson(Map<String, dynamic> json) => _$PlanMatrixFromJson(json);



}
