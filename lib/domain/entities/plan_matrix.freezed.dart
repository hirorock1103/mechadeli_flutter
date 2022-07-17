// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'plan_matrix.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlanMatrix _$PlanMatrixFromJson(Map<String, dynamic> json) {
  return _PlanMatrix.fromJson(json);
}

/// @nodoc
mixin _$PlanMatrix {
  int get id => throw _privateConstructorUsedError;
  int get shop_id => throw _privateConstructorUsedError;
  int get shop_plan_id => throw _privateConstructorUsedError;
  int get option_plan_id => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanMatrixCopyWith<PlanMatrix> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanMatrixCopyWith<$Res> {
  factory $PlanMatrixCopyWith(
          PlanMatrix value, $Res Function(PlanMatrix) then) =
      _$PlanMatrixCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int shop_id,
      int shop_plan_id,
      int option_plan_id,
      String created_at,
      String updated_at});
}

/// @nodoc
class _$PlanMatrixCopyWithImpl<$Res> implements $PlanMatrixCopyWith<$Res> {
  _$PlanMatrixCopyWithImpl(this._value, this._then);

  final PlanMatrix _value;
  // ignore: unused_field
  final $Res Function(PlanMatrix) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? shop_id = freezed,
    Object? shop_plan_id = freezed,
    Object? option_plan_id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
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
      shop_plan_id: shop_plan_id == freezed
          ? _value.shop_plan_id
          : shop_plan_id // ignore: cast_nullable_to_non_nullable
              as int,
      option_plan_id: option_plan_id == freezed
          ? _value.option_plan_id
          : option_plan_id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PlanMatrixCopyWith<$Res>
    implements $PlanMatrixCopyWith<$Res> {
  factory _$$_PlanMatrixCopyWith(
          _$_PlanMatrix value, $Res Function(_$_PlanMatrix) then) =
      __$$_PlanMatrixCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int shop_id,
      int shop_plan_id,
      int option_plan_id,
      String created_at,
      String updated_at});
}

/// @nodoc
class __$$_PlanMatrixCopyWithImpl<$Res> extends _$PlanMatrixCopyWithImpl<$Res>
    implements _$$_PlanMatrixCopyWith<$Res> {
  __$$_PlanMatrixCopyWithImpl(
      _$_PlanMatrix _value, $Res Function(_$_PlanMatrix) _then)
      : super(_value, (v) => _then(v as _$_PlanMatrix));

  @override
  _$_PlanMatrix get _value => super._value as _$_PlanMatrix;

  @override
  $Res call({
    Object? id = freezed,
    Object? shop_id = freezed,
    Object? shop_plan_id = freezed,
    Object? option_plan_id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$_PlanMatrix(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      shop_id: shop_id == freezed
          ? _value.shop_id
          : shop_id // ignore: cast_nullable_to_non_nullable
              as int,
      shop_plan_id: shop_plan_id == freezed
          ? _value.shop_plan_id
          : shop_plan_id // ignore: cast_nullable_to_non_nullable
              as int,
      option_plan_id: option_plan_id == freezed
          ? _value.option_plan_id
          : option_plan_id // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlanMatrix extends _PlanMatrix {
  _$_PlanMatrix(
      {this.id = 0,
      this.shop_id = 0,
      this.shop_plan_id = 0,
      this.option_plan_id = 0,
      this.created_at = '',
      this.updated_at = ''})
      : super._();

  factory _$_PlanMatrix.fromJson(Map<String, dynamic> json) =>
      _$$_PlanMatrixFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int shop_id;
  @override
  @JsonKey()
  final int shop_plan_id;
  @override
  @JsonKey()
  final int option_plan_id;
  @override
  @JsonKey()
  final String created_at;
  @override
  @JsonKey()
  final String updated_at;

  @override
  String toString() {
    return 'PlanMatrix(id: $id, shop_id: $shop_id, shop_plan_id: $shop_plan_id, option_plan_id: $option_plan_id, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlanMatrix &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.shop_id, shop_id) &&
            const DeepCollectionEquality()
                .equals(other.shop_plan_id, shop_plan_id) &&
            const DeepCollectionEquality()
                .equals(other.option_plan_id, option_plan_id) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(shop_id),
      const DeepCollectionEquality().hash(shop_plan_id),
      const DeepCollectionEquality().hash(option_plan_id),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at));

  @JsonKey(ignore: true)
  @override
  _$$_PlanMatrixCopyWith<_$_PlanMatrix> get copyWith =>
      __$$_PlanMatrixCopyWithImpl<_$_PlanMatrix>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlanMatrixToJson(this);
  }
}

abstract class _PlanMatrix extends PlanMatrix {
  factory _PlanMatrix(
      {final int id,
      final int shop_id,
      final int shop_plan_id,
      final int option_plan_id,
      final String created_at,
      final String updated_at}) = _$_PlanMatrix;
  _PlanMatrix._() : super._();

  factory _PlanMatrix.fromJson(Map<String, dynamic> json) =
      _$_PlanMatrix.fromJson;

  @override
  int get id;
  @override
  int get shop_id;
  @override
  int get shop_plan_id;
  @override
  int get option_plan_id;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$_PlanMatrixCopyWith<_$_PlanMatrix> get copyWith =>
      throw _privateConstructorUsedError;
}
