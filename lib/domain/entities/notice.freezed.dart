// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notice _$NoticeFromJson(Map<String, dynamic> json) {
  return _Notice.fromJson(json);
}

/// @nodoc
mixin _$Notice {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  int get to => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeCopyWith<Notice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeCopyWith<$Res> {
  factory $NoticeCopyWith(Notice value, $Res Function(Notice) then) =
      _$NoticeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String contents,
      int to,
      int status,
      String updated_at,
      String created_at});
}

/// @nodoc
class _$NoticeCopyWithImpl<$Res> implements $NoticeCopyWith<$Res> {
  _$NoticeCopyWithImpl(this._value, this._then);

  final Notice _value;
  // ignore: unused_field
  final $Res Function(Notice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? to = freezed,
    Object? status = freezed,
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
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_NoticeCopyWith<$Res> implements $NoticeCopyWith<$Res> {
  factory _$$_NoticeCopyWith(_$_Notice value, $Res Function(_$_Notice) then) =
      __$$_NoticeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String contents,
      int to,
      int status,
      String updated_at,
      String created_at});
}

/// @nodoc
class __$$_NoticeCopyWithImpl<$Res> extends _$NoticeCopyWithImpl<$Res>
    implements _$$_NoticeCopyWith<$Res> {
  __$$_NoticeCopyWithImpl(_$_Notice _value, $Res Function(_$_Notice) _then)
      : super(_value, (v) => _then(v as _$_Notice));

  @override
  _$_Notice get _value => super._value as _$_Notice;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? to = freezed,
    Object? status = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$_Notice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_Notice extends _Notice {
  _$_Notice(
      {this.id = 0,
      this.title = '',
      this.contents = '',
      this.to = 0,
      this.status = 0,
      this.updated_at = '',
      this.created_at = ''})
      : super._();

  factory _$_Notice.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String contents;
  @override
  @JsonKey()
  final int to;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final String updated_at;
  @override
  @JsonKey()
  final String created_at;

  @override
  String toString() {
    return 'Notice(id: $id, title: $title, contents: $contents, to: $to, status: $status, updated_at: $updated_at, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notice &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.status, status) &&
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
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(created_at));

  @JsonKey(ignore: true)
  @override
  _$$_NoticeCopyWith<_$_Notice> get copyWith =>
      __$$_NoticeCopyWithImpl<_$_Notice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeToJson(this);
  }
}

abstract class _Notice extends Notice {
  factory _Notice(
      {final int id,
      final String title,
      final String contents,
      final int to,
      final int status,
      final String updated_at,
      final String created_at}) = _$_Notice;
  _Notice._() : super._();

  factory _Notice.fromJson(Map<String, dynamic> json) = _$_Notice.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get contents;
  @override
  int get to;
  @override
  int get status;
  @override
  String get updated_at;
  @override
  String get created_at;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeCopyWith<_$_Notice> get copyWith =>
      throw _privateConstructorUsedError;
}
