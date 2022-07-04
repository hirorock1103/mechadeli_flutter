// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_login_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserLoginPageState {
  int get count => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get loginErrorMessage => throw _privateConstructorUsedError;
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLoginPageStateCopyWith<UserLoginPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginPageStateCopyWith<$Res> {
  factory $UserLoginPageStateCopyWith(
          UserLoginPageState value, $Res Function(UserLoginPageState) then) =
      _$UserLoginPageStateCopyWithImpl<$Res>;
  $Res call(
      {int count,
      String email,
      String password,
      String loginErrorMessage,
      MechadeliFlow currentFlow});
}

/// @nodoc
class _$UserLoginPageStateCopyWithImpl<$Res>
    implements $UserLoginPageStateCopyWith<$Res> {
  _$UserLoginPageStateCopyWithImpl(this._value, this._then);

  final UserLoginPageState _value;
  // ignore: unused_field
  final $Res Function(UserLoginPageState) _then;

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
abstract class _$$_UserLoginPageStateCopyWith<$Res>
    implements $UserLoginPageStateCopyWith<$Res> {
  factory _$$_UserLoginPageStateCopyWith(_$_UserLoginPageState value,
          $Res Function(_$_UserLoginPageState) then) =
      __$$_UserLoginPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      String email,
      String password,
      String loginErrorMessage,
      MechadeliFlow currentFlow});
}

/// @nodoc
class __$$_UserLoginPageStateCopyWithImpl<$Res>
    extends _$UserLoginPageStateCopyWithImpl<$Res>
    implements _$$_UserLoginPageStateCopyWith<$Res> {
  __$$_UserLoginPageStateCopyWithImpl(
      _$_UserLoginPageState _value, $Res Function(_$_UserLoginPageState) _then)
      : super(_value, (v) => _then(v as _$_UserLoginPageState));

  @override
  _$_UserLoginPageState get _value => super._value as _$_UserLoginPageState;

  @override
  $Res call({
    Object? count = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? loginErrorMessage = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_$_UserLoginPageState(
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

class _$_UserLoginPageState
    with DiagnosticableTreeMixin
    implements _UserLoginPageState {
  const _$_UserLoginPageState(
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
    return 'UserLoginPageState(count: $count, email: $email, password: $password, loginErrorMessage: $loginErrorMessage, currentFlow: $currentFlow)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserLoginPageState'))
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
            other is _$_UserLoginPageState &&
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
  _$$_UserLoginPageStateCopyWith<_$_UserLoginPageState> get copyWith =>
      __$$_UserLoginPageStateCopyWithImpl<_$_UserLoginPageState>(
          this, _$identity);
}

abstract class _UserLoginPageState implements UserLoginPageState {
  const factory _UserLoginPageState(
      {final int count,
      final String email,
      final String password,
      final String loginErrorMessage,
      final MechadeliFlow currentFlow}) = _$_UserLoginPageState;

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
  _$$_UserLoginPageStateCopyWith<_$_UserLoginPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
