// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inquiry_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InquiryState {
  int get count => throw _privateConstructorUsedError;
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InquiryStateCopyWith<InquiryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InquiryStateCopyWith<$Res> {
  factory $InquiryStateCopyWith(
          InquiryState value, $Res Function(InquiryState) then) =
      _$InquiryStateCopyWithImpl<$Res>;
  $Res call({int count, MechadeliFlow currentFlow});
}

/// @nodoc
class _$InquiryStateCopyWithImpl<$Res> implements $InquiryStateCopyWith<$Res> {
  _$InquiryStateCopyWithImpl(this._value, this._then);

  final InquiryState _value;
  // ignore: unused_field
  final $Res Function(InquiryState) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_InquiryStateCopyWith<$Res>
    implements $InquiryStateCopyWith<$Res> {
  factory _$$_InquiryStateCopyWith(
          _$_InquiryState value, $Res Function(_$_InquiryState) then) =
      __$$_InquiryStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, MechadeliFlow currentFlow});
}

/// @nodoc
class __$$_InquiryStateCopyWithImpl<$Res>
    extends _$InquiryStateCopyWithImpl<$Res>
    implements _$$_InquiryStateCopyWith<$Res> {
  __$$_InquiryStateCopyWithImpl(
      _$_InquiryState _value, $Res Function(_$_InquiryState) _then)
      : super(_value, (v) => _then(v as _$_InquiryState));

  @override
  _$_InquiryState get _value => super._value as _$_InquiryState;

  @override
  $Res call({
    Object? count = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_$_InquiryState(
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

class _$_InquiryState with DiagnosticableTreeMixin implements _InquiryState {
  const _$_InquiryState(
      {this.count = 0, this.currentFlow = MechadeliFlow.cancel});

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final MechadeliFlow currentFlow;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InquiryState(count: $count, currentFlow: $currentFlow)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InquiryState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('currentFlow', currentFlow));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InquiryState &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.currentFlow, currentFlow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(currentFlow));

  @JsonKey(ignore: true)
  @override
  _$$_InquiryStateCopyWith<_$_InquiryState> get copyWith =>
      __$$_InquiryStateCopyWithImpl<_$_InquiryState>(this, _$identity);
}

abstract class _InquiryState implements InquiryState {
  const factory _InquiryState(
      {final int count, final MechadeliFlow currentFlow}) = _$_InquiryState;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InquiryStateCopyWith<_$_InquiryState> get copyWith =>
      throw _privateConstructorUsedError;
}
