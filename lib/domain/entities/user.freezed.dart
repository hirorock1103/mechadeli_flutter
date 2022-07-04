// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get first_name => throw _privateConstructorUsedError;
  String get last_name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get user_code => throw _privateConstructorUsedError;
  String get navigator_image => throw _privateConstructorUsedError;
  String get user_number => throw _privateConstructorUsedError;
  int get use_license_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String first_name,
      String last_name,
      String email,
      String user_code,
      String navigator_image,
      String user_number,
      int use_license_count});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? user_code = freezed,
    Object? navigator_image = freezed,
    Object? user_number = freezed,
    Object? use_license_count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      user_code: user_code == freezed
          ? _value.user_code
          : user_code // ignore: cast_nullable_to_non_nullable
              as String,
      navigator_image: navigator_image == freezed
          ? _value.navigator_image
          : navigator_image // ignore: cast_nullable_to_non_nullable
              as String,
      user_number: user_number == freezed
          ? _value.user_number
          : user_number // ignore: cast_nullable_to_non_nullable
              as String,
      use_license_count: use_license_count == freezed
          ? _value.use_license_count
          : use_license_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String first_name,
      String last_name,
      String email,
      String user_code,
      String navigator_image,
      String user_number,
      int use_license_count});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? user_code = freezed,
    Object? navigator_image = freezed,
    Object? user_number = freezed,
    Object? use_license_count = freezed,
  }) {
    return _then(_$_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      first_name: first_name == freezed
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String,
      last_name: last_name == freezed
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      user_code: user_code == freezed
          ? _value.user_code
          : user_code // ignore: cast_nullable_to_non_nullable
              as String,
      navigator_image: navigator_image == freezed
          ? _value.navigator_image
          : navigator_image // ignore: cast_nullable_to_non_nullable
              as String,
      user_number: user_number == freezed
          ? _value.user_number
          : user_number // ignore: cast_nullable_to_non_nullable
              as String,
      use_license_count: use_license_count == freezed
          ? _value.use_license_count
          : use_license_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  _$_User(
      {this.id = 0,
      this.first_name = '',
      this.last_name = '',
      this.email = '',
      this.user_code = '',
      this.navigator_image = '',
      this.user_number = '',
      this.use_license_count = 0})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String first_name;
  @override
  @JsonKey()
  final String last_name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String user_code;
  @override
  @JsonKey()
  final String navigator_image;
  @override
  @JsonKey()
  final String user_number;
  @override
  @JsonKey()
  final int use_license_count;

  @override
  String toString() {
    return 'User(id: $id, first_name: $first_name, last_name: $last_name, email: $email, user_code: $user_code, navigator_image: $navigator_image, user_number: $user_number, use_license_count: $use_license_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.first_name, first_name) &&
            const DeepCollectionEquality().equals(other.last_name, last_name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.user_code, user_code) &&
            const DeepCollectionEquality()
                .equals(other.navigator_image, navigator_image) &&
            const DeepCollectionEquality()
                .equals(other.user_number, user_number) &&
            const DeepCollectionEquality()
                .equals(other.use_license_count, use_license_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(first_name),
      const DeepCollectionEquality().hash(last_name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(user_code),
      const DeepCollectionEquality().hash(navigator_image),
      const DeepCollectionEquality().hash(user_number),
      const DeepCollectionEquality().hash(use_license_count));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User extends User {
  factory _User(
      {final int id,
      final String first_name,
      final String last_name,
      final String email,
      final String user_code,
      final String navigator_image,
      final String user_number,
      final int use_license_count}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get first_name => throw _privateConstructorUsedError;
  @override
  String get last_name => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get user_code => throw _privateConstructorUsedError;
  @override
  String get navigator_image => throw _privateConstructorUsedError;
  @override
  String get user_number => throw _privateConstructorUsedError;
  @override
  int get use_license_count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
