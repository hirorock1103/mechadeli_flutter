import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_list.freezed.dart';

part 'data_list.g.dart';

@freezed
class DataList with _$DataList {
  factory DataList({
    @Default(0) int current_page,
    @Default('') String first_page_url,
    @Default('') String last_page_url,
    @Default(0) int total,
    @Default(0) int from,
    @Default(0) int to,
    @Default(<dynamic>[]) List<dynamic> data,
    List<dynamic>? errors,
  }) = _DataList;

  DataList._();

  factory DataList.fromJson(Map<String, dynamic> json) =>
      _$DataListFromJson(json);
}