import 'package:freezed_annotation/freezed_annotation.dart';

part 'array_response.freezed.dart';

part 'array_response.g.dart';

@freezed
class ArrayResponse with _$ArrayResponse {
  factory ArrayResponse({
    @Default('') String status,
    @Default('') String message,
    @Default(<String, dynamic>{}) Map<String, dynamic> auth,
    @Default(<dynamic>[]) List<dynamic> data,
    @Default('') @JsonKey(name: 'error_code') String errorCode,
    List<dynamic>? errors,

  }) = _ArrayResponse;

  ArrayResponse._();

  factory ArrayResponse.fromJson(Map<String, dynamic> json) =>
      _$ArrayResponseFromJson(json);
}