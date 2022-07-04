// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_register_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopRegisterState {
  String get inputName => throw _privateConstructorUsedError;
  String get inputEmail => throw _privateConstructorUsedError;
  String get inputPw => throw _privateConstructorUsedError;
  String get inputPwConfirm => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopRegisterStateCopyWith<ShopRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopRegisterStateCopyWith<$Res> {
  factory $ShopRegisterStateCopyWith(
          ShopRegisterState value, $Res Function(ShopRegisterState) then) =
      _$ShopRegisterStateCopyWithImpl<$Res>;
  $Res call(
      {String inputName,
      String inputEmail,
      String inputPw,
      String inputPwConfirm,
      int count,
      MechadeliFlow currentFlow});
}

/// @nodoc
class _$ShopRegisterStateCopyWithImpl<$Res>
    implements $ShopRegisterStateCopyWith<$Res> {
  _$ShopRegisterStateCopyWithImpl(this._value, this._then);

  final ShopRegisterState _value;
  // ignore: unused_field
  final $Res Function(ShopRegisterState) _then;

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
abstract class _$$_ShopRegisterStateCopyWith<$Res>
    implements $ShopRegisterStateCopyWith<$Res> {
  factory _$$_ShopRegisterStateCopyWith(_$_ShopRegisterState value,
          $Res Function(_$_ShopRegisterState) then) =
      __$$_ShopRegisterStateCopyWithImpl<$Res>;
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
class __$$_ShopRegisterStateCopyWithImpl<$Res>
    extends _$ShopRegisterStateCopyWithImpl<$Res>
    implements _$$_ShopRegisterStateCopyWith<$Res> {
  __$$_ShopRegisterStateCopyWithImpl(
      _$_ShopRegisterState _value, $Res Function(_$_ShopRegisterState) _then)
      : super(_value, (v) => _then(v as _$_ShopRegisterState));

  @override
  _$_ShopRegisterState get _value => super._value as _$_ShopRegisterState;

  @override
  $Res call({
    Object? inputName = freezed,
    Object? inputEmail = freezed,
    Object? inputPw = freezed,
    Object? inputPwConfirm = freezed,
    Object? count = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_$_ShopRegisterState(
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

class _$_ShopRegisterState
    with DiagnosticableTreeMixin
    implements _ShopRegisterState {
  const _$_ShopRegisterState(
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
    return 'ShopRegisterState(inputName: $inputName, inputEmail: $inputEmail, inputPw: $inputPw, inputPwConfirm: $inputPwConfirm, count: $count, currentFlow: $currentFlow)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopRegisterState'))
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
            other is _$_ShopRegisterState &&
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
  _$$_ShopRegisterStateCopyWith<_$_ShopRegisterState> get copyWith =>
      __$$_ShopRegisterStateCopyWithImpl<_$_ShopRegisterState>(
          this, _$identity);
}

abstract class _ShopRegisterState implements ShopRegisterState {
  const factory _ShopRegisterState(
      {final String inputName,
      final String inputEmail,
      final String inputPw,
      final String inputPwConfirm,
      final int count,
      final MechadeliFlow currentFlow}) = _$_ShopRegisterState;

  @override
  String get inputName => throw _privateConstructorUsedError;
  @override
  String get inputEmail => throw _privateConstructorUsedError;
  @override
  String get inputPw => throw _privateConstructorUsedError;
  @override
  String get inputPwConfirm => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopRegisterStateCopyWith<_$_ShopRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
