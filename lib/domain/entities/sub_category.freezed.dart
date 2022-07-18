// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sub_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return _SubCategory.fromJson(json);
}

/// @nodoc
mixin _$SubCategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get main_category_id => throw _privateConstructorUsedError;
  String get main_category_title => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoryCopyWith<SubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryCopyWith<$Res> {
  factory $SubCategoryCopyWith(
          SubCategory value, $Res Function(SubCategory) then) =
      _$SubCategoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      int main_category_id,
      String main_category_title,
      String updated_at,
      String created_at});
}

/// @nodoc
class _$SubCategoryCopyWithImpl<$Res> implements $SubCategoryCopyWith<$Res> {
  _$SubCategoryCopyWithImpl(this._value, this._then);

  final SubCategory _value;
  // ignore: unused_field
  final $Res Function(SubCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? main_category_id = freezed,
    Object? main_category_title = freezed,
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
      main_category_id: main_category_id == freezed
          ? _value.main_category_id
          : main_category_id // ignore: cast_nullable_to_non_nullable
              as int,
      main_category_title: main_category_title == freezed
          ? _value.main_category_title
          : main_category_title // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SubCategoryCopyWith<$Res>
    implements $SubCategoryCopyWith<$Res> {
  factory _$$_SubCategoryCopyWith(
          _$_SubCategory value, $Res Function(_$_SubCategory) then) =
      __$$_SubCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      int main_category_id,
      String main_category_title,
      String updated_at,
      String created_at});
}

/// @nodoc
class __$$_SubCategoryCopyWithImpl<$Res> extends _$SubCategoryCopyWithImpl<$Res>
    implements _$$_SubCategoryCopyWith<$Res> {
  __$$_SubCategoryCopyWithImpl(
      _$_SubCategory _value, $Res Function(_$_SubCategory) _then)
      : super(_value, (v) => _then(v as _$_SubCategory));

  @override
  _$_SubCategory get _value => super._value as _$_SubCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? main_category_id = freezed,
    Object? main_category_title = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$_SubCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      main_category_id: main_category_id == freezed
          ? _value.main_category_id
          : main_category_id // ignore: cast_nullable_to_non_nullable
              as int,
      main_category_title: main_category_title == freezed
          ? _value.main_category_title
          : main_category_title // ignore: cast_nullable_to_non_nullable
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
class _$_SubCategory extends _SubCategory {
  _$_SubCategory(
      {this.id = 0,
      this.title = '',
      this.main_category_id = 0,
      this.main_category_title = '',
      this.updated_at = '',
      this.created_at = ''})
      : super._();

  factory _$_SubCategory.fromJson(Map<String, dynamic> json) =>
      _$$_SubCategoryFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final int main_category_id;
  @override
  @JsonKey()
  final String main_category_title;
  @override
  @JsonKey()
  final String updated_at;
  @override
  @JsonKey()
  final String created_at;

  @override
  String toString() {
    return 'SubCategory(id: $id, title: $title, main_category_id: $main_category_id, main_category_title: $main_category_title, updated_at: $updated_at, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.main_category_id, main_category_id) &&
            const DeepCollectionEquality()
                .equals(other.main_category_title, main_category_title) &&
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
      const DeepCollectionEquality().hash(main_category_id),
      const DeepCollectionEquality().hash(main_category_title),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(created_at));

  @JsonKey(ignore: true)
  @override
  _$$_SubCategoryCopyWith<_$_SubCategory> get copyWith =>
      __$$_SubCategoryCopyWithImpl<_$_SubCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubCategoryToJson(this);
  }
}

abstract class _SubCategory extends SubCategory {
  factory _SubCategory(
      {final int id,
      final String title,
      final int main_category_id,
      final String main_category_title,
      final String updated_at,
      final String created_at}) = _$_SubCategory;
  _SubCategory._() : super._();

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$_SubCategory.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  int get main_category_id;
  @override
  String get main_category_title;
  @override
  String get updated_at;
  @override
  String get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_SubCategoryCopyWith<_$_SubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
