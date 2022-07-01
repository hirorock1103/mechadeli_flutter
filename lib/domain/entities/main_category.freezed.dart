// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainCategory _$MainCategoryFromJson(Map<String, dynamic> json) {
  return _MainCategory.fromJson(json);
}

/// @nodoc
mixin _$MainCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainCategoryCopyWith<MainCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainCategoryCopyWith<$Res> {
  factory $MainCategoryCopyWith(
          MainCategory value, $Res Function(MainCategory) then) =
      _$MainCategoryCopyWithImpl<$Res>;
  $Res call({int id, String title, String updated_at, String created_at});
}

/// @nodoc
class _$MainCategoryCopyWithImpl<$Res> implements $MainCategoryCopyWith<$Res> {
  _$MainCategoryCopyWithImpl(this._value, this._then);

  final MainCategory _value;
  // ignore: unused_field
  final $Res Function(MainCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MainCategoryCopyWith<$Res>
    implements $MainCategoryCopyWith<$Res> {
  factory _$$_MainCategoryCopyWith(
          _$_MainCategory value, $Res Function(_$_MainCategory) then) =
      __$$_MainCategoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String updated_at, String created_at});
}

/// @nodoc
class __$$_MainCategoryCopyWithImpl<$Res>
    extends _$MainCategoryCopyWithImpl<$Res>
    implements _$$_MainCategoryCopyWith<$Res> {
  __$$_MainCategoryCopyWithImpl(
      _$_MainCategory _value, $Res Function(_$_MainCategory) _then)
      : super(_value, (v) => _then(v as _$_MainCategory));

  @override
  _$_MainCategory get _value => super._value as _$_MainCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$_MainCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainCategory extends _MainCategory {
  _$_MainCategory(
      {this.id = 0,
      this.title = '',
      this.updated_at = '',
      this.created_at = ''})
      : super._();

  factory _$_MainCategory.fromJson(Map<String, dynamic> json) =>
      _$$_MainCategoryFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String updated_at;
  @override
  @JsonKey()
  final String created_at;

  @override
  String toString() {
    return 'MainCategory(id: $id, title: $title, updated_at: $updated_at, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(created_at));

  @JsonKey(ignore: true)
  @override
  _$$_MainCategoryCopyWith<_$_MainCategory> get copyWith =>
      __$$_MainCategoryCopyWithImpl<_$_MainCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainCategoryToJson(this);
  }
}

abstract class _MainCategory extends MainCategory {
  factory _MainCategory(
      {final int id,
      final String title,
      final String updated_at,
      final String created_at}) = _$_MainCategory;
  _MainCategory._() : super._();

  factory _MainCategory.fromJson(Map<String, dynamic> json) =
      _$_MainCategory.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get updated_at => throw _privateConstructorUsedError;
  @override
  String get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MainCategoryCopyWith<_$_MainCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
