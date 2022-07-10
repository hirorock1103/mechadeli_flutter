// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleState {
  int get count => throw _privateConstructorUsedError;
  List<Order> get orderList => throw _privateConstructorUsedError;
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleStateCopyWith<ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res>;
  $Res call({int count, List<Order> orderList, MechadeliFlow currentFlow});
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  final ScheduleState _value;
  // ignore: unused_field
  final $Res Function(ScheduleState) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? orderList = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      orderList: orderList == freezed
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      currentFlow: currentFlow == freezed
          ? _value.currentFlow
          : currentFlow // ignore: cast_nullable_to_non_nullable
              as MechadeliFlow,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleStateCopyWith<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  factory _$$_ScheduleStateCopyWith(
          _$_ScheduleState value, $Res Function(_$_ScheduleState) then) =
      __$$_ScheduleStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<Order> orderList, MechadeliFlow currentFlow});
}

/// @nodoc
class __$$_ScheduleStateCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$_ScheduleStateCopyWith<$Res> {
  __$$_ScheduleStateCopyWithImpl(
      _$_ScheduleState _value, $Res Function(_$_ScheduleState) _then)
      : super(_value, (v) => _then(v as _$_ScheduleState));

  @override
  _$_ScheduleState get _value => super._value as _$_ScheduleState;

  @override
  $Res call({
    Object? count = freezed,
    Object? orderList = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_$_ScheduleState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      orderList: orderList == freezed
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      currentFlow: currentFlow == freezed
          ? _value.currentFlow
          : currentFlow // ignore: cast_nullable_to_non_nullable
              as MechadeliFlow,
    ));
  }
}

/// @nodoc

class _$_ScheduleState with DiagnosticableTreeMixin implements _ScheduleState {
  const _$_ScheduleState(
      {this.count = 0,
      final List<Order> orderList = const <Order>[],
      this.currentFlow = MechadeliFlow.cancel})
      : _orderList = orderList;

  @override
  @JsonKey()
  final int count;
  final List<Order> _orderList;
  @override
  @JsonKey()
  List<Order> get orderList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  @JsonKey()
  final MechadeliFlow currentFlow;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleState(count: $count, orderList: $orderList, currentFlow: $currentFlow)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('orderList', orderList))
      ..add(DiagnosticsProperty('currentFlow', currentFlow));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleState &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList) &&
            const DeepCollectionEquality()
                .equals(other.currentFlow, currentFlow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(_orderList),
      const DeepCollectionEquality().hash(currentFlow));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleStateCopyWith<_$_ScheduleState> get copyWith =>
      __$$_ScheduleStateCopyWithImpl<_$_ScheduleState>(this, _$identity);
}

abstract class _ScheduleState implements ScheduleState {
  const factory _ScheduleState(
      {final int count,
      final List<Order> orderList,
      final MechadeliFlow currentFlow}) = _$_ScheduleState;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  List<Order> get orderList => throw _privateConstructorUsedError;
  @override
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleStateCopyWith<_$_ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}
