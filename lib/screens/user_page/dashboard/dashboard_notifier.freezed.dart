// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  int get count => throw _privateConstructorUsedError;
  List<Notice> get noticeList => throw _privateConstructorUsedError;
  List<Order> get orderList => throw _privateConstructorUsedError;
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call(
      {int count,
      List<Notice> noticeList,
      List<Order> orderList,
      MechadeliFlow currentFlow});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? noticeList = freezed,
    Object? orderList = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      noticeList: noticeList == freezed
          ? _value.noticeList
          : noticeList // ignore: cast_nullable_to_non_nullable
              as List<Notice>,
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
abstract class _$$_DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_DashboardStateCopyWith(
          _$_DashboardState value, $Res Function(_$_DashboardState) then) =
      __$$_DashboardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      List<Notice> noticeList,
      List<Order> orderList,
      MechadeliFlow currentFlow});
}

/// @nodoc
class __$$_DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$_DashboardStateCopyWith<$Res> {
  __$$_DashboardStateCopyWithImpl(
      _$_DashboardState _value, $Res Function(_$_DashboardState) _then)
      : super(_value, (v) => _then(v as _$_DashboardState));

  @override
  _$_DashboardState get _value => super._value as _$_DashboardState;

  @override
  $Res call({
    Object? count = freezed,
    Object? noticeList = freezed,
    Object? orderList = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_$_DashboardState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      noticeList: noticeList == freezed
          ? _value._noticeList
          : noticeList // ignore: cast_nullable_to_non_nullable
              as List<Notice>,
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

class _$_DashboardState
    with DiagnosticableTreeMixin
    implements _DashboardState {
  const _$_DashboardState(
      {this.count = 0,
      final List<Notice> noticeList = const <Notice>[],
      final List<Order> orderList = const <Order>[],
      this.currentFlow = MechadeliFlow.cancel})
      : _noticeList = noticeList,
        _orderList = orderList;

  @override
  @JsonKey()
  final int count;
  final List<Notice> _noticeList;
  @override
  @JsonKey()
  List<Notice> get noticeList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noticeList);
  }

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
    return 'DashboardState(count: $count, noticeList: $noticeList, orderList: $orderList, currentFlow: $currentFlow)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('noticeList', noticeList))
      ..add(DiagnosticsProperty('orderList', orderList))
      ..add(DiagnosticsProperty('currentFlow', currentFlow));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardState &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other._noticeList, _noticeList) &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList) &&
            const DeepCollectionEquality()
                .equals(other.currentFlow, currentFlow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(_noticeList),
      const DeepCollectionEquality().hash(_orderList),
      const DeepCollectionEquality().hash(currentFlow));

  @JsonKey(ignore: true)
  @override
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      __$$_DashboardStateCopyWithImpl<_$_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {final int count,
      final List<Notice> noticeList,
      final List<Order> orderList,
      final MechadeliFlow currentFlow}) = _$_DashboardState;

  @override
  int get count;
  @override
  List<Notice> get noticeList;
  @override
  List<Order> get orderList;
  @override
  MechadeliFlow get currentFlow;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
