// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_detail_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Shop> get shops => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopDetailStateCopyWith<ShopDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopDetailStateCopyWith<$Res> {
  factory $ShopDetailStateCopyWith(
          ShopDetailState value, $Res Function(ShopDetailState) then) =
      _$ShopDetailStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, List<Shop> shops, int count, MechadeliFlow currentFlow});
}

/// @nodoc
class _$ShopDetailStateCopyWithImpl<$Res>
    implements $ShopDetailStateCopyWith<$Res> {
  _$ShopDetailStateCopyWithImpl(this._value, this._then);

  final ShopDetailState _value;
  // ignore: unused_field
  final $Res Function(ShopDetailState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? shops = freezed,
    Object? count = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      shops: shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
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
abstract class _$$_ShopDetailStateCopyWith<$Res>
    implements $ShopDetailStateCopyWith<$Res> {
  factory _$$_ShopDetailStateCopyWith(
          _$_ShopDetailState value, $Res Function(_$_ShopDetailState) then) =
      __$$_ShopDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, List<Shop> shops, int count, MechadeliFlow currentFlow});
}

/// @nodoc
class __$$_ShopDetailStateCopyWithImpl<$Res>
    extends _$ShopDetailStateCopyWithImpl<$Res>
    implements _$$_ShopDetailStateCopyWith<$Res> {
  __$$_ShopDetailStateCopyWithImpl(
      _$_ShopDetailState _value, $Res Function(_$_ShopDetailState) _then)
      : super(_value, (v) => _then(v as _$_ShopDetailState));

  @override
  _$_ShopDetailState get _value => super._value as _$_ShopDetailState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? shops = freezed,
    Object? count = freezed,
    Object? currentFlow = freezed,
  }) {
    return _then(_$_ShopDetailState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      shops: shops == freezed
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
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

class _$_ShopDetailState
    with DiagnosticableTreeMixin
    implements _ShopDetailState {
  const _$_ShopDetailState(
      {this.isLoading = false,
      final List<Shop> shops = const <Shop>[],
      this.count = 0,
      this.currentFlow = MechadeliFlow.cancel})
      : _shops = shops;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Shop> _shops;
  @override
  @JsonKey()
  List<Shop> get shops {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shops);
  }

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final MechadeliFlow currentFlow;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopDetailState(isLoading: $isLoading, shops: $shops, count: $count, currentFlow: $currentFlow)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopDetailState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('shops', shops))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('currentFlow', currentFlow));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopDetailState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._shops, _shops) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.currentFlow, currentFlow));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_shops),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(currentFlow));

  @JsonKey(ignore: true)
  @override
  _$$_ShopDetailStateCopyWith<_$_ShopDetailState> get copyWith =>
      __$$_ShopDetailStateCopyWithImpl<_$_ShopDetailState>(this, _$identity);
}

abstract class _ShopDetailState implements ShopDetailState {
  const factory _ShopDetailState(
      {final bool isLoading,
      final List<Shop> shops,
      final int count,
      final MechadeliFlow currentFlow}) = _$_ShopDetailState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<Shop> get shops => throw _privateConstructorUsedError;
  @override
  int get count => throw _privateConstructorUsedError;
  @override
  MechadeliFlow get currentFlow => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopDetailStateCopyWith<_$_ShopDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
