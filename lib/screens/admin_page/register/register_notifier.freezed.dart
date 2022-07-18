// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  String get inputName => throw _privateConstructorUsedError;
  String get inputEmail => throw _privateConstructorUsedError;
  String get inputPw => throw _privateConstructorUsedError;
  String get inputPwConfirm => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {String inputName,
      String inputEmail,
      String inputPw,
      String inputPwConfirm,
      int count,
      MechadeliFlow currentFlow});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? inputName = freezed,
    Object? inputEmail = freezed,
    Object? inputPw = freezed,
    Object? inputPwConfirm = freezed,
    Object? count = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_value.copyWith(
      inputName: inputName == freezed
          ? _value.inputName
          : inputName // ignore: cast_nullable_to_non_nullable
              as String,
      inputEmail: inputEmail == freezed
          ? _value.inputEmail
          : inputEmail // ignore: cast_nullable_to_non_nullable
              as String,
      inputPw: inputPw == freezed
          ? _value.inputPw
          : inputPw // ignore: cast_nullable_to_non_nullable
              as String,
      inputPwConfirm: inputPwConfirm == freezed
          ? _value.inputPwConfirm
          : inputPwConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      currentFlow: currentFlow == freezed
          ? _value.currentFlow
          : currentFlow // ignore: cast_nullable_to_non_nullable
              as MechadeliFlow,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String inputName,
      String inputEmail,
      String inputPw,
      String inputPwConfirm,
      int count,
      MechadeliFlow currentFlow});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, (v) => _then(v as _$_RegisterState));

  @override
  _$_RegisterState get _value => super._value as _$_RegisterState;

  @override
  $Res call({
    Object? inputName = freezed,
    Object? inputEmail = freezed,
    Object? inputPw = freezed,
    Object? inputPwConfirm = freezed,
    Object? count = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_$_RegisterState(
      inputName: inputName == freezed
          ? _value.inputName
          : inputName // ignore: cast_nullable_to_non_nullable
              as String,
      inputEmail: inputEmail == freezed
          ? _value.inputEmail
          : inputEmail // ignore: cast_nullable_to_non_nullable
              as String,
      inputPw: inputPw == freezed
          ? _value.inputPw
          : inputPw // ignore: cast_nullable_to_non_nullable
              as String,
      inputPwConfirm: inputPwConfirm == freezed
          ? _value.inputPwConfirm
          : inputPwConfirm // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      currentFlow: currentFlow == freezed
          ? _value.currentFlow
          : currentFlow // ignore: cast_nullable_to_non_nullable
              as MechadeliFlow,
    ));
  }
}

/// @nodoc

class _$_RegisterState with DiagnosticableTreeMixin implements _RegisterState {
  const _$_RegisterState(
      {this.inputName = '',
      this.inputEmail = '',
      this.inputPw = '',
      this.inputPwConfirm = '',
      this.count = 0,
      this.currentFlow = MechadeliFlow.cancel});

  @override
  @JsonKey()
  final String inputName;
  @override
  @JsonKey()
  final String inputEmail;
  @override
  @JsonKey()
  final String inputPw;
  @override
  @JsonKey()
  final String inputPwConfirm;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final MechadeliFlow currentFlow;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState(inputName: $inputName, inputEmail: $inputEmail, inputPw: $inputPw, inputPwConfirm: $inputPwConfirm, count: $count, currentFlow: $currentFlow)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState'))
      ..add(DiagnosticsProperty('inputName', inputName))
      ..add(DiagnosticsProperty('inputEmail', inputEmail))
      ..add(DiagnosticsProperty('inputPw', inputPw))
      ..add(DiagnosticsProperty('inputPwConfirm', inputPwConfirm))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('currentFlow', currentFlow));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            const DeepCollectionEquality().equals(other.inputName, inputName) &&
            const DeepCollectionEquality()
                .equals(other.inputEmail, inputEmail) &&
            const DeepCollectionEquality().equals(other.inputPw, inputPw) &&
            const DeepCollectionEquality()
                .equals(other.inputPwConfirm, inputPwConfirm) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.currentFlow, currentFlow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(inputName),
      const DeepCollectionEquality().hash(inputEmail),
      const DeepCollectionEquality().hash(inputPw),
      const DeepCollectionEquality().hash(inputPwConfirm),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(currentFlow));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final String inputName,
      final String inputEmail,
      final String inputPw,
      final String inputPwConfirm,
      final int count,
      final MechadeliFlow currentFlow}) = _$_RegisterState;

  @override
  String get inputName;
  @override
  String get inputEmail;
  @override
  String get inputPw;
  @override
  String get inputPwConfirm;
  @override
  int get count;
  @override
  MechadeliFlow get currentFlow;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
