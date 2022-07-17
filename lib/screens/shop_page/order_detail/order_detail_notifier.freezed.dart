// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_detail_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderDetailState {
  int get count => throw _privateConstructorUsedError;
  int get selectedMainShopPlanId => throw _privateConstructorUsedError;
  Order get order => throw _privateConstructorUsedError;
  List<Order> get orderList => throw _privateConstructorUsedError;
  List<OrderChild> get orderChildList => throw _privateConstructorUsedError;
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderDetailStateCopyWith<OrderDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailStateCopyWith<$Res> {
  factory $OrderDetailStateCopyWith(
          OrderDetailState value, $Res Function(OrderDetailState) then) =
      _$OrderDetailStateCopyWithImpl<$Res>;
  $Res call(
      {int count,
      int selectedMainShopPlanId,
      Order order,
      List<Order> orderList,
      List<OrderChild> orderChildList,
      MechadeliFlow currentFlow});

  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class _$OrderDetailStateCopyWithImpl<$Res>
    implements $OrderDetailStateCopyWith<$Res> {
  _$OrderDetailStateCopyWithImpl(this._value, this._then);

  final OrderDetailState _value;
  // ignore: unused_field
  final $Res Function(OrderDetailState) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? selectedMainShopPlanId = freezed,
    Object? order = freezed,
    Object? orderList = freezed,
    Object? orderChildList = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      selectedMainShopPlanId: selectedMainShopPlanId == freezed
          ? _value.selectedMainShopPlanId
          : selectedMainShopPlanId // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      orderList: orderList == freezed
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      orderChildList: orderChildList == freezed
          ? _value.orderChildList
          : orderChildList // ignore: cast_nullable_to_non_nullable
              as List<OrderChild>,
      currentFlow: currentFlow == freezed
          ? _value.currentFlow
          : currentFlow // ignore: cast_nullable_to_non_nullable
              as MechadeliFlow,
    ));
  }

  @override
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value));
    });
  }
}

/// @nodoc
abstract class _$$_OrderDetailStateCopyWith<$Res>
    implements $OrderDetailStateCopyWith<$Res> {
  factory _$$_OrderDetailStateCopyWith(
          _$_OrderDetailState value, $Res Function(_$_OrderDetailState) then) =
      __$$_OrderDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      int selectedMainShopPlanId,
      Order order,
      List<Order> orderList,
      List<OrderChild> orderChildList,
      MechadeliFlow currentFlow});

  @override
  $OrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$_OrderDetailStateCopyWithImpl<$Res>
    extends _$OrderDetailStateCopyWithImpl<$Res>
    implements _$$_OrderDetailStateCopyWith<$Res> {
  __$$_OrderDetailStateCopyWithImpl(
      _$_OrderDetailState _value, $Res Function(_$_OrderDetailState) _then)
      : super(_value, (v) => _then(v as _$_OrderDetailState));

  @override
  _$_OrderDetailState get _value => super._value as _$_OrderDetailState;

  @override
  $Res call({
    Object? count = freezed,
    Object? selectedMainShopPlanId = freezed,
    Object? order = freezed,
    Object? orderList = freezed,
    Object? orderChildList = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_$_OrderDetailState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      selectedMainShopPlanId: selectedMainShopPlanId == freezed
          ? _value.selectedMainShopPlanId
          : selectedMainShopPlanId // ignore: cast_nullable_to_non_nullable
              as int,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      orderList: orderList == freezed
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      orderChildList: orderChildList == freezed
          ? _value._orderChildList
          : orderChildList // ignore: cast_nullable_to_non_nullable
              as List<OrderChild>,
      currentFlow: currentFlow == freezed
          ? _value.currentFlow
          : currentFlow // ignore: cast_nullable_to_non_nullable
              as MechadeliFlow,
    ));
  }
}

/// @nodoc

class _$_OrderDetailState
    with DiagnosticableTreeMixin
    implements _OrderDetailState {
  const _$_OrderDetailState(
      {this.count = 0,
      this.selectedMainShopPlanId = 0,
      required this.order,
      final List<Order> orderList = const <Order>[],
      final List<OrderChild> orderChildList = const <OrderChild>[],
      this.currentFlow = MechadeliFlow.cancel})
      : _orderList = orderList,
        _orderChildList = orderChildList;

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int selectedMainShopPlanId;
  @override
  final Order order;
  final List<Order> _orderList;
  @override
  @JsonKey()
  List<Order> get orderList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  final List<OrderChild> _orderChildList;
  @override
  @JsonKey()
  List<OrderChild> get orderChildList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderChildList);
  }

  @override
  @JsonKey()
  final MechadeliFlow currentFlow;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderDetailState(count: $count, selectedMainShopPlanId: $selectedMainShopPlanId, order: $order, orderList: $orderList, orderChildList: $orderChildList, currentFlow: $currentFlow)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderDetailState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(
          DiagnosticsProperty('selectedMainShopPlanId', selectedMainShopPlanId))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('orderList', orderList))
      ..add(DiagnosticsProperty('orderChildList', orderChildList))
      ..add(DiagnosticsProperty('currentFlow', currentFlow));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailState &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.selectedMainShopPlanId, selectedMainShopPlanId) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList) &&
            const DeepCollectionEquality()
                .equals(other._orderChildList, _orderChildList) &&
            const DeepCollectionEquality()
                .equals(other.currentFlow, currentFlow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(selectedMainShopPlanId),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(_orderList),
      const DeepCollectionEquality().hash(_orderChildList),
      const DeepCollectionEquality().hash(currentFlow));

  @JsonKey(ignore: true)
  @override
  _$$_OrderDetailStateCopyWith<_$_OrderDetailState> get copyWith =>
      __$$_OrderDetailStateCopyWithImpl<_$_OrderDetailState>(this, _$identity);
}

abstract class _OrderDetailState implements OrderDetailState {
  const factory _OrderDetailState(
      {final int count,
      final int selectedMainShopPlanId,
      required final Order order,
      final List<Order> orderList,
      final List<OrderChild> orderChildList,
      final MechadeliFlow currentFlow}) = _$_OrderDetailState;

  @override
  int get count;
  @override
  int get selectedMainShopPlanId;
  @override
  Order get order;
  @override
  List<Order> get orderList;
  @override
  List<OrderChild> get orderChildList;
  @override
  MechadeliFlow get currentFlow;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailStateCopyWith<_$_OrderDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
