// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  UserLoginStatus get loginStatus =>
      throw _privateConstructorUsedError; // @Default(FacilitatorType.woman) FacilitatorType facilitatorType,
// @Default(FacilitatorType.woman) FacilitatorType clientFacilitatorType,
// //企業関連
// @Default(<User>[]) List<User> companyUsers,
// @Default(ClientDataType.save) ClientDataType clientDataType,
  int get count => throw _privateConstructorUsedError;
  int get adminSelectShopId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({UserLoginStatus loginStatus, int count, int adminSelectShopId});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? loginStatus = freezed,
    Object? count = freezed,
    Object? adminSelectShopId = freezed,
  }) {
    return _then(_value.copyWith(
      loginStatus: loginStatus == freezed
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as UserLoginStatus,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      adminSelectShopId: adminSelectShopId == freezed
          ? _value.adminSelectShopId
          : adminSelectShopId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  $Res call({UserLoginStatus loginStatus, int count, int adminSelectShopId});
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, (v) => _then(v as _$_AppState));

  @override
  _$_AppState get _value => super._value as _$_AppState;

  @override
  $Res call({
    Object? loginStatus = freezed,
    Object? count = freezed,
    Object? adminSelectShopId = freezed,
  }) {
    return _then(_$_AppState(
      loginStatus: loginStatus == freezed
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as UserLoginStatus,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      adminSelectShopId: adminSelectShopId == freezed
          ? _value.adminSelectShopId
          : adminSelectShopId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState(
      {this.loginStatus = UserLoginStatus.logout,
      this.count = 0,
      this.adminSelectShopId = 0});

  @override
  @JsonKey()
  final UserLoginStatus loginStatus;
// @Default(FacilitatorType.woman) FacilitatorType facilitatorType,
// @Default(FacilitatorType.woman) FacilitatorType clientFacilitatorType,
// //企業関連
// @Default(<User>[]) List<User> companyUsers,
// @Default(ClientDataType.save) ClientDataType clientDataType,
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int adminSelectShopId;

  @override
  String toString() {
    return 'AppState(loginStatus: $loginStatus, count: $count, adminSelectShopId: $adminSelectShopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            const DeepCollectionEquality()
                .equals(other.loginStatus, loginStatus) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.adminSelectShopId, adminSelectShopId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loginStatus),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(adminSelectShopId));

  @JsonKey(ignore: true)
  @override
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final UserLoginStatus loginStatus,
      final int count,
      final int adminSelectShopId}) = _$_AppState;

  @override
  UserLoginStatus get loginStatus => throw _privateConstructorUsedError;
  @override // @Default(FacilitatorType.woman) FacilitatorType facilitatorType,
// @Default(FacilitatorType.woman) FacilitatorType clientFacilitatorType,
// //企業関連
// @Default(<User>[]) List<User> companyUsers,
// @Default(ClientDataType.save) ClientDataType clientDataType,
  int get count => throw _privateConstructorUsedError;
  @override
  int get adminSelectShopId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
