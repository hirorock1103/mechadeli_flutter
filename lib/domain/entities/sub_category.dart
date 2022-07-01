import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category.freezed.dart';
part 'sub_category.g.dart';

@freezed
class SubCategory with _$SubCategory {
  factory SubCategory({
    @Default(0) int id,
    @Default('') String title,
    @Default(0) int main_category_id,
    @Default('') String updated_at,
    @Default('') String created_at,


  }) = _SubCategory;

  SubCategory._();


  factory SubCategory.fromJson(Map<String, dynamic> json) => _$SubCategoryFromJson(json);



}
