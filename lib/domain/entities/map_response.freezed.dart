// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapResponse _$MapResponseFromJson(Map<String, dynamic> json) {
  return _MapResponse.fromJson(json);
}

/// @nodoc
mixin _$MapResponse {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Map<String, dynamic> get auth => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_code')
  String get errorCode => throw _privateConstructorUsedError;
  List<dynamic>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapResponseCopyWith<MapResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapResponseCopyWith<$Res> {
  factory $MapResponseCopyWith(
          MapResponse value, $Res Function(MapResponse) then) =
      _$MapResponseCopyWithImpl<$Res>;
  $Res call(
      {String status,
      String message,
      Map<String, dynamic> auth,
      Map<String, dynamic> data,
      @JsonKey(name: 'error_code') String errorCode,
      List<dynamic>? errors});
}

/// @nodoc
class _$MapResponseCopyWithImpl<$Res> implements $MapResponseCopyWith<$Res> {
  _$MapResponseCopyWithImpl(this._value, this._then);

  final MapResponse _value;
  // ignore: unused_field
  final $Res Function(MapResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? auth = freezed,
    Object? data = freezed,
    Object? errorCode = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MapResponseCopyWith<$Res>
    implements $MapResponseCopyWith<$Res> {
  factory _$$_MapResponseCopyWith(
          _$_MapResponse value, $Res Function(_$_MapResponse) then) =
      __$$_MapResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String message,
      Map<String, dynamic> auth,
      Map<String, dynamic> data,
      @JsonKey(name: 'error_code') String errorCode,
      List<dynamic>? errors});
}

/// @nodoc
class __$$_MapResponseCopyWithImpl<$Res> extends _$MapResponseCopyWithImpl<$Res>
    implements _$$_MapResponseCopyWith<$Res> {
  __$$_MapResponseCopyWithImpl(
      _$_MapResponse _value, $Res Function(_$_MapResponse) _then)
      : super(_value, (v) => _then(v as _$_MapResponse));

  @override
  _$_MapResponse get _value => super._value as _$_MapResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? auth = freezed,
    Object? data = freezed,
    Object? errorCode = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_MapResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      auth: auth == freezed
          ? _value._auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      errors: errors == freezed
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MapResponse extends _MapResponse {
  _$_MapResponse(
      {this.status = '',
      this.message = '',
      final Map<String, dynamic> auth = const <String, dynamic>{},
      final Map<String, dynamic> data = const <String, dynamic>{},
      @JsonKey(name: 'error_code') this.errorCode = '',
      final List<dynamic>? errors})
      : _auth = auth,
        _data = data,
        _errors = errors,
        super._();

  factory _$_MapResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MapResponseFromJson(json);

  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String message;
  final Map<String, dynamic> _auth;
  @override
  @JsonKey()
  Map<String, dynamic> get auth {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_auth);
  }

  final Map<String, dynamic> _data;
  @override
  @JsonKey()
  Map<String, dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  @JsonKey(name: 'error_code')
  final String errorCode;
  final List<dynamic>? _errors;
  @override
  List<dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MapResponse(status: $status, message: $message, auth: $auth, data: $data, errorCode: $errorCode, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._auth, _auth) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_auth),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(errorCode),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  _$$_MapResponseCopyWith<_$_MapResponse> get copyWith =>
      __$$_MapResponseCopyWithImpl<_$_MapResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapResponseToJson(this);
  }
}

abstract class _MapResponse extends MapResponse {
  factory _MapResponse(
      {final String status,
      final String message,
      final Map<String, dynamic> auth,
      final Map<String, dynamic> data,
      @JsonKey(name: 'error_code') final String errorCode,
      final List<dynamic>? errors}) = _$_MapResponse;
  _MapResponse._() : super._();

  factory _MapResponse.fromJson(Map<String, dynamic> json) =
      _$_MapResponse.fromJson;

  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get auth => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'error_code')
  String get errorCode => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get errors => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MapResponseCopyWith<_$_MapResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
