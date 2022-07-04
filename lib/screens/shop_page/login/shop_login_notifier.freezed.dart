// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_login_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopLoginPageState {
  int get count => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get loginErrorMessage => throw _privateConstructorUsedError;
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopLoginPageStateCopyWith<ShopLoginPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopLoginPageStateCopyWith<$Res> {
  factory $ShopLoginPageStateCopyWith(
          ShopLoginPageState value, $Res Function(ShopLoginPageState) then) =
      _$ShopLoginPageStateCopyWithImpl<$Res>;
  $Res call(
      {int count,
      String email,
      String password,
      String loginErrorMessage,
      MechadeliFlow currentFlow});
}

/// @nodoc
class _$ShopLoginPageStateCopyWithImpl<$Res>
    implements $ShopLoginPageStateCopyWith<$Res> {
  _$ShopLoginPageStateCopyWithImpl(this._value, this._then);

  final ShopLoginPageState _value;
  // ignore: unused_field
  final $Res Function(ShopLoginPageState) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? loginErrorMessage = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loginErrorMessage: loginErrorMessage == freezed
          ? _value.loginErrorMessage
          : loginErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentFlow: currentFlow == freezed
          ? _value.currentFlow
          : currentFlow // ignore: cast_nullable_to_non_nullable
              as MechadeliFlow,
    ));
  }
}

/// @nodoc
abstract class _$$_ShopLoginPageStateCopyWith<$Res>
    implements $ShopLoginPageStateCopyWith<$Res> {
  factory _$$_ShopLoginPageStateCopyWith(_$_ShopLoginPageState value,
          $Res Function(_$_ShopLoginPageState) then) =
      __$$_ShopLoginPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      String email,
      String password,
      String loginErrorMessage,
      MechadeliFlow currentFlow});
}

/// @nodoc
class __$$_ShopLoginPageStateCopyWithImpl<$Res>
    extends _$ShopLoginPageStateCopyWithImpl<$Res>
    implements _$$_ShopLoginPageStateCopyWith<$Res> {
  __$$_ShopLoginPageStateCopyWithImpl(
      _$_ShopLoginPageState _value, $Res Function(_$_ShopLoginPageState) _then)
      : super(_value, (v) => _then(v as _$_ShopLoginPageState));

  @override
  _$_ShopLoginPageState get _value => super._value as _$_ShopLoginPageState;

  @override
  $Res call({
    Object? count = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? loginErrorMessage = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_$_ShopLoginPageState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loginErrorMessage: loginErrorMessage == freezed
          ? _value.loginErrorMessage
          : loginErrorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentFlow: currentFlow == freezed
          ? _value.currentFlow
          : currentFlow // ignore: cast_nullable_to_non_nullable
              as MechadeliFlow,
    ));
  }
}

/// @nodoc

class _$_ShopLoginPageState
    with DiagnosticableTreeMixin
    implements _ShopLoginPageState {
  const _$_ShopLoginPageState(
      {this.count = 0,
      this.email = "",
      this.password = "",
      this.loginErrorMessage = "",
      this.currentFlow = MechadeliFlow.cancel});

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String loginErrorMessage;
  @override
  @JsonKey()
  final MechadeliFlow currentFlow;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopLoginPageState(count: $count, email: $email, password: $password, loginErrorMessage: $loginErrorMessage, currentFlow: $currentFlow)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopLoginPageState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('loginErrorMessage', loginErrorMessage))
      ..add(DiagnosticsProperty('currentFlow', currentFlow));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopLoginPageState &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.loginErrorMessage, loginErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.currentFlow, currentFlow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(loginErrorMessage),
      const DeepCollectionEquality().hash(currentFlow));

  @JsonKey(ignore: true)
  @override
  _$$_ShopLoginPageStateCopyWith<_$_ShopLoginPageState> get copyWith =>
      __$$_ShopLoginPageStateCopyWithImpl<_$_ShopLoginPageState>(
          this, _$identity);
}

abstract class _ShopLoginPageState implements ShopLoginPageState {
  const factory _ShopLoginPageState(
      {final int count,
      final String email,
      final String password,
      final String loginErrorMessage,
      final MechadeliFlow currentFlow}) = _$_ShopLoginPageState;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  String get loginErrorMessage => throw _privateConstructorUsedError;
  @override
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopLoginPageStateCopyWith<_$_ShopLoginPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
