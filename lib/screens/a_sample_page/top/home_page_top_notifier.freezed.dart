// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_top_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageTopState {
  int get count => throw _privateConstructorUsedError;
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageTopStateCopyWith<HomePageTopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageTopStateCopyWith<$Res> {
  factory $HomePageTopStateCopyWith(
          HomePageTopState value, $Res Function(HomePageTopState) then) =
      _$HomePageTopStateCopyWithImpl<$Res>;
  $Res call({int count, MechadeliFlow currentFlow});
}

/// @nodoc
class _$HomePageTopStateCopyWithImpl<$Res>
    implements $HomePageTopStateCopyWith<$Res> {
  _$HomePageTopStateCopyWithImpl(this._value, this._then);

  final HomePageTopState _value;
  // ignore: unused_field
  final $Res Function(HomePageTopState) _then;

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
abstract class _$$_HomePageTopStateCopyWith<$Res>
    implements $HomePageTopStateCopyWith<$Res> {
  factory _$$_HomePageTopStateCopyWith(
          _$_HomePageTopState value, $Res Function(_$_HomePageTopState) then) =
      __$$_HomePageTopStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, MechadeliFlow currentFlow});
}

/// @nodoc
class __$$_HomePageTopStateCopyWithImpl<$Res>
    extends _$HomePageTopStateCopyWithImpl<$Res>
    implements _$$_HomePageTopStateCopyWith<$Res> {
  __$$_HomePageTopStateCopyWithImpl(
      _$_HomePageTopState _value, $Res Function(_$_HomePageTopState) _then)
      : super(_value, (v) => _then(v as _$_HomePageTopState));

  @override
  _$_HomePageTopState get _value => super._value as _$_HomePageTopState;

  @override
  $Res call({
    Object? count = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_$_HomePageTopState(
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

class _$_HomePageTopState
    with DiagnosticableTreeMixin
    implements _HomePageTopState {
  const _$_HomePageTopState(
      {this.count = 0, this.currentFlow = MechadeliFlow.cancel});

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final MechadeliFlow currentFlow;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomePageTopState(count: $count, currentFlow: $currentFlow)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomePageTopState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('currentFlow', currentFlow));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomePageTopState &&
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
  _$$_HomePageTopStateCopyWith<_$_HomePageTopState> get copyWith =>
      __$$_HomePageTopStateCopyWithImpl<_$_HomePageTopState>(this, _$identity);
}

abstract class _HomePageTopState implements HomePageTopState {
  const factory _HomePageTopState(
      {final int count, final MechadeliFlow currentFlow}) = _$_HomePageTopState;

  @override
  int get count;
  @override
  MechadeliFlow get currentFlow;
  @override
  @JsonKey(ignore: true)
  _$$_HomePageTopStateCopyWith<_$_HomePageTopState> get copyWith =>
      throw _privateConstructorUsedError;
}
