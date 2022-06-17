import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_response.freezed.dart';

part 'map_response.g.dart';

@freezed
class MapResponse with _$MapResponse {
  factory MapResponse({
    @Default('') String status,
    @Default('') String message,
    @Default(<String, dynamic>{}) Map<String, dynamic> auth,
    @Default(<String, dynamic>{}) Map<String, dynamic> data,
    @Default('') @JsonKey(name: 'error_code') String errorCode,
    List<dynamic>? errors,

  }) = _MapResponse;

  MapResponse._();

  factory MapResponse.fromJson(Map<String, dynamic> json) =>
      _$MapResponseFromJson(json);
}