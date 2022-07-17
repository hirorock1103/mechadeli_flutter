// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopArea _$ShopAreaFromJson(Map<String, dynamic> json) {
  return _ShopArea.fromJson(json);
}

/// @nodoc
mixin _$ShopArea {
  int get id => throw _privateConstructorUsedError;
  int get shop_id => throw _privateConstructorUsedError;
  int get ken_id => throw _privateConstructorUsedError;
  int get city_id => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopAreaCopyWith<ShopArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopAreaCopyWith<$Res> {
  factory $ShopAreaCopyWith(ShopArea value, $Res Function(ShopArea) then) =
      _$ShopAreaCopyWithImpl<$Res>;
  $Res call({int id, int shop_id, int ken_id, int city_id, int status});
}

/// @nodoc
class _$ShopAreaCopyWithImpl<$Res> implements $ShopAreaCopyWith<$Res> {
  _$ShopAreaCopyWithImpl(this._value, this._then);

  final ShopArea _value;
  // ignore: unused_field
  final $Res Function(ShopArea) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? shop_id = freezed,
    Object? ken_id = freezed,
    Object? city_id = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shop_id: shop_id == freezed
          ? _value.shop_id
          : shop_id // ignore: cast_nullable_to_non_nullable
              as int,
      ken_id: ken_id == freezed
          ? _value.ken_id
          : ken_id // ignore: cast_nullable_to_non_nullable
              as int,
      city_id: city_id == freezed
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ShopAreaCopyWith<$Res> implements $ShopAreaCopyWith<$Res> {
  factory _$$_ShopAreaCopyWith(
          _$_ShopArea value, $Res Function(_$_ShopArea) then) =
      __$$_ShopAreaCopyWithImpl<$Res>;
  @override
  $Res call({int id, int shop_id, int ken_id, int city_id, int status});
}

/// @nodoc
class __$$_ShopAreaCopyWithImpl<$Res> extends _$ShopAreaCopyWithImpl<$Res>
    implements _$$_ShopAreaCopyWith<$Res> {
  __$$_ShopAreaCopyWithImpl(
      _$_ShopArea _value, $Res Function(_$_ShopArea) _then)
      : super(_value, (v) => _then(v as _$_ShopArea));

  @override
  _$_ShopArea get _value => super._value as _$_ShopArea;

  @override
  $Res call({
    Object? id = freezed,
    Object? shop_id = freezed,
    Object? ken_id = freezed,
    Object? city_id = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ShopArea(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shop_id: shop_id == freezed
          ? _value.shop_id
          : shop_id // ignore: cast_nullable_to_non_nullable
              as int,
      ken_id: ken_id == freezed
          ? _value.ken_id
          : ken_id // ignore: cast_nullable_to_non_nullable
              as int,
      city_id: city_id == freezed
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopArea extends _ShopArea {
  _$_ShopArea(
      {this.id = 0,
      this.shop_id = 0,
      this.ken_id = 0,
      this.city_id = 0,
      this.status = 0})
      : super._();

  factory _$_ShopArea.fromJson(Map<String, dynamic> json) =>
      _$$_ShopAreaFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int shop_id;
  @override
  @JsonKey()
  final int ken_id;
  @override
  @JsonKey()
  final int city_id;
  @override
  @JsonKey()
  final int status;

  @override
  String toString() {
    return 'ShopArea(id: $id, shop_id: $shop_id, ken_id: $ken_id, city_id: $city_id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopArea &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.shop_id, shop_id) &&
            const DeepCollectionEquality().equals(other.ken_id, ken_id) &&
            const DeepCollectionEquality().equals(other.city_id, city_id) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(shop_id),
      const DeepCollectionEquality().hash(ken_id),
      const DeepCollectionEquality().hash(city_id),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ShopAreaCopyWith<_$_ShopArea> get copyWith =>
      __$$_ShopAreaCopyWithImpl<_$_ShopArea>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopAreaToJson(this);
  }
}

abstract class _ShopArea extends ShopArea {
  factory _ShopArea(
      {final int id,
      final int shop_id,
      final int ken_id,
      final int city_id,
      final int status}) = _$_ShopArea;
  _ShopArea._() : super._();

  factory _ShopArea.fromJson(Map<String, dynamic> json) = _$_ShopArea.fromJson;

  @override
  int get id;
  @override
  int get shop_id;
  @override
  int get ken_id;
  @override
  int get city_id;
  @override
  int get status;
  @override
  @JsonKey(ignore: true)
  _$$_ShopAreaCopyWith<_$_ShopArea> get copyWith =>
      throw _privateConstructorUsedError;
}
