// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataList _$DataListFromJson(Map<String, dynamic> json) {
  return _DataList.fromJson(json);
}

/// @nodoc
mixin _$DataList {
  int get current_page => throw _privateConstructorUsedError;
  String get first_page_url => throw _privateConstructorUsedError;
  String get last_page_url => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get from => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;
  List<dynamic> get data => throw _privateConstructorUsedError;
  List<dynamic>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataListCopyWith<DataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataListCopyWith<$Res> {
  factory $DataListCopyWith(DataList value, $Res Function(DataList) then) =
      _$DataListCopyWithImpl<$Res>;
  $Res call(
      {int current_page,
      String first_page_url,
      String last_page_url,
      int total,
      int from,
      int to,
      List<dynamic> data,
      List<dynamic>? errors});
}

/// @nodoc
class _$DataListCopyWithImpl<$Res> implements $DataListCopyWith<$Res> {
  _$DataListCopyWithImpl(this._value, this._then);

  final DataList _value;
  // ignore: unused_field
  final $Res Function(DataList) _then;

  @override
  $Res call({
    Object? current_page = freezed,
    Object? first_page_url = freezed,
    Object? last_page_url = freezed,
    Object? total = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? data = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      current_page: current_page == freezed
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int,
      first_page_url: first_page_url == freezed
          ? _value.first_page_url
          : first_page_url // ignore: cast_nullable_to_non_nullable
              as String,
      last_page_url: last_page_url == freezed
          ? _value.last_page_url
          : last_page_url // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_DataListCopyWith<$Res> implements $DataListCopyWith<$Res> {
  factory _$$_DataListCopyWith(
          _$_DataList value, $Res Function(_$_DataList) then) =
      __$$_DataListCopyWithImpl<$Res>;
  @override
  $Res call(
      {int current_page,
      String first_page_url,
      String last_page_url,
      int total,
      int from,
      int to,
      List<dynamic> data,
      List<dynamic>? errors});
}

/// @nodoc
class __$$_DataListCopyWithImpl<$Res> extends _$DataListCopyWithImpl<$Res>
    implements _$$_DataListCopyWith<$Res> {
  __$$_DataListCopyWithImpl(
      _$_DataList _value, $Res Function(_$_DataList) _then)
      : super(_value, (v) => _then(v as _$_DataList));

  @override
  _$_DataList get _value => super._value as _$_DataList;

  @override
  $Res call({
    Object? current_page = freezed,
    Object? first_page_url = freezed,
    Object? last_page_url = freezed,
    Object? total = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? data = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_DataList(
      current_page: current_page == freezed
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int,
      first_page_url: first_page_url == freezed
          ? _value.first_page_url
          : first_page_url // ignore: cast_nullable_to_non_nullable
              as String,
      last_page_url: last_page_url == freezed
          ? _value.last_page_url
          : last_page_url // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      errors: errors == freezed
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataList extends _DataList {
  _$_DataList(
      {this.current_page = 0,
      this.first_page_url = '',
      this.last_page_url = '',
      this.total = 0,
      this.from = 0,
      this.to = 0,
      final List<dynamic> data = const <dynamic>[],
      final List<dynamic>? errors})
      : _data = data,
        _errors = errors,
        super._();

  factory _$_DataList.fromJson(Map<String, dynamic> json) =>
      _$$_DataListFromJson(json);

  @override
  @JsonKey()
  final int current_page;
  @override
  @JsonKey()
  final String first_page_url;
  @override
  @JsonKey()
  final String last_page_url;
  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int from;
  @override
  @JsonKey()
  final int to;
  final List<dynamic> _data;
  @override
  @JsonKey()
  List<dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

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
    return 'DataList(current_page: $current_page, first_page_url: $first_page_url, last_page_url: $last_page_url, total: $total, from: $from, to: $to, data: $data, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataList &&
            const DeepCollectionEquality()
                .equals(other.current_page, current_page) &&
            const DeepCollectionEquality()
                .equals(other.first_page_url, first_page_url) &&
            const DeepCollectionEquality()
                .equals(other.last_page_url, last_page_url) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(current_page),
      const DeepCollectionEquality().hash(first_page_url),
      const DeepCollectionEquality().hash(last_page_url),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  _$$_DataListCopyWith<_$_DataList> get copyWith =>
      __$$_DataListCopyWithImpl<_$_DataList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataListToJson(this);
  }
}

abstract class _DataList extends DataList {
  factory _DataList(
      {final int current_page,
      final String first_page_url,
      final String last_page_url,
      final int total,
      final int from,
      final int to,
      final List<dynamic> data,
      final List<dynamic>? errors}) = _$_DataList;
  _DataList._() : super._();

  factory _DataList.fromJson(Map<String, dynamic> json) = _$_DataList.fromJson;

  @override
  int get current_page;
  @override
  String get first_page_url;
  @override
  String get last_page_url;
  @override
  int get total;
  @override
  int get from;
  @override
  int get to;
  @override
  List<dynamic> get data;
  @override
  List<dynamic>? get errors;
  @override
  @JsonKey(ignore: true)
  _$$_DataListCopyWith<_$_DataList> get copyWith =>
      throw _privateConstructorUsedError;
}
