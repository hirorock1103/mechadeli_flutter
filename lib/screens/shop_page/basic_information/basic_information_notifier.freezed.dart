// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'basic_information_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasicInformationState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasicInformationStateCopyWith<BasicInformationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInformationStateCopyWith<$Res> {
  factory $BasicInformationStateCopyWith(BasicInformationState value,
          $Res Function(BasicInformationState) then) =
      _$BasicInformationStateCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$BasicInformationStateCopyWithImpl<$Res>
    implements $BasicInformationStateCopyWith<$Res> {
  _$BasicInformationStateCopyWithImpl(this._value, this._then);

  final BasicInformationState _value;
  // ignore: unused_field
  final $Res Function(BasicInformationState) _then;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BasicInformationStateCopyWith<$Res>
    implements $BasicInformationStateCopyWith<$Res> {
  factory _$$_BasicInformationStateCopyWith(_$_BasicInformationState value,
          $Res Function(_$_BasicInformationState) then) =
      __$$_BasicInformationStateCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

/// @nodoc
class __$$_BasicInformationStateCopyWithImpl<$Res>
    extends _$BasicInformationStateCopyWithImpl<$Res>
    implements _$$_BasicInformationStateCopyWith<$Res> {
  __$$_BasicInformationStateCopyWithImpl(_$_BasicInformationState _value,
      $Res Function(_$_BasicInformationState) _then)
      : super(_value, (v) => _then(v as _$_BasicInformationState));

  @override
  _$_BasicInformationState get _value =>
      super._value as _$_BasicInformationState;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$_BasicInformationState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BasicInformationState
    with DiagnosticableTreeMixin
    implements _BasicInformationState {
  const _$_BasicInformationState({this.count = 0});

  @override
  @JsonKey()
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BasicInformationState(count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BasicInformationState'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicInformationState &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_BasicInformationStateCopyWith<_$_BasicInformationState> get copyWith =>
      __$$_BasicInformationStateCopyWithImpl<_$_BasicInformationState>(
          this, _$identity);
}

abstract class _BasicInformationState implements BasicInformationState {
  const factory _BasicInformationState({final int count}) =
      _$_BasicInformationState;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BasicInformationStateCopyWith<_$_BasicInformationState> get copyWith =>
      throw _privateConstructorUsedError;
}
