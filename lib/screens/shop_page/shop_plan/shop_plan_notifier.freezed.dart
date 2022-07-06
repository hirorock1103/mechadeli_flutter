// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_plan_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopPlanState {
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopPlanStateCopyWith<ShopPlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopPlanStateCopyWith<$Res> {
  factory $ShopPlanStateCopyWith(
          ShopPlanState value, $Res Function(ShopPlanState) then) =
      _$ShopPlanStateCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$ShopPlanStateCopyWithImpl<$Res>
    implements $ShopPlanStateCopyWith<$Res> {
  _$ShopPlanStateCopyWithImpl(this._value, this._then);

  final ShopPlanState _value;
  // ignore: unused_field
  final $Res Function(ShopPlanState) _then;

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
abstract class _$$_ShopPlanStateCopyWith<$Res>
    implements $ShopPlanStateCopyWith<$Res> {
  factory _$$_ShopPlanStateCopyWith(
          _$_ShopPlanState value, $Res Function(_$_ShopPlanState) then) =
      __$$_ShopPlanStateCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

/// @nodoc
class __$$_ShopPlanStateCopyWithImpl<$Res>
    extends _$ShopPlanStateCopyWithImpl<$Res>
    implements _$$_ShopPlanStateCopyWith<$Res> {
  __$$_ShopPlanStateCopyWithImpl(
      _$_ShopPlanState _value, $Res Function(_$_ShopPlanState) _then)
      : super(_value, (v) => _then(v as _$_ShopPlanState));

  @override
  _$_ShopPlanState get _value => super._value as _$_ShopPlanState;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$_ShopPlanState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ShopPlanState with DiagnosticableTreeMixin implements _ShopPlanState {
  const _$_ShopPlanState({this.count = 0});

  @override
  @JsonKey()
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopPlanState(count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopPlanState'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopPlanState &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$$_ShopPlanStateCopyWith<_$_ShopPlanState> get copyWith =>
      __$$_ShopPlanStateCopyWithImpl<_$_ShopPlanState>(this, _$identity);
}

abstract class _ShopPlanState implements ShopPlanState {
  const factory _ShopPlanState({final int count}) = _$_ShopPlanState;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopPlanStateCopyWith<_$_ShopPlanState> get copyWith =>
      throw _privateConstructorUsedError;
}
