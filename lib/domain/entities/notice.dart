import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice.freezed.dart';
part 'notice.g.dart';

@freezed
class Notice with _$Notice {
  factory Notice({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String contents,
    @Default(0) int to,
    @Default(0) int status,
    @Default('') String updated_at,
    @Default('') String created_at,


  }) = _Notice;

  Notice._();


  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);



}
