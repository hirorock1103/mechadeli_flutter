import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_category.freezed.dart';
part 'main_category.g.dart';

@freezed
class MainCategory with _$MainCategory {
  factory MainCategory({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String updated_at,
    @Default('') String created_at,


  }) = _MainCategory;

  MainCategory._();


  factory MainCategory.fromJson(Map<String, dynamic> json) => _$MainCategoryFromJson(json);



}
