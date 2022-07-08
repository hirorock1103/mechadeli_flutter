// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'option_plan_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OptionPlanState {
  int get count => throw _privateConstructorUsedError;
  bool get planDisplayStatus =>
      throw _privateConstructorUsedError; // @Default(ApplyStatus.notYet) ApplyStatus applyStatus,
// @Default(<Notice>[]) List<Notice> noticeList,
// @Default(<Order>[]) List<Order> orderList,
  List<OptionPlan> get optionPlanList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OptionPlanStateCopyWith<OptionPlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionPlanStateCopyWith<$Res> {
  factory $OptionPlanStateCopyWith(
          OptionPlanState value, $Res Function(OptionPlanState) then) =
      _$OptionPlanStateCopyWithImpl<$Res>;
  $Res call(
      {int count, bool planDisplayStatus, List<OptionPlan> optionPlanList});
}

/// @nodoc
class _$OptionPlanStateCopyWithImpl<$Res>
    implements $OptionPlanStateCopyWith<$Res> {
  _$OptionPlanStateCopyWithImpl(this._value, this._then);

  final OptionPlanState _value;
  // ignore: unused_field
  final $Res Function(OptionPlanState) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? planDisplayStatus = freezed,
    Object? optionPlanList = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      planDisplayStatus: planDisplayStatus == freezed
          ? _value.planDisplayStatus
          : planDisplayStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      optionPlanList: optionPlanList == freezed
          ? _value.optionPlanList
          : optionPlanList // ignore: cast_nullable_to_non_nullable
              as List<OptionPlan>,
    ));
  }
}

/// @nodoc
abstract class _$$_OptionPlanStateCopyWith<$Res>
    implements $OptionPlanStateCopyWith<$Res> {
  factory _$$_OptionPlanStateCopyWith(
          _$_OptionPlanState value, $Res Function(_$_OptionPlanState) then) =
      __$$_OptionPlanStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count, bool planDisplayStatus, List<OptionPlan> optionPlanList});
}

/// @nodoc
class __$$_OptionPlanStateCopyWithImpl<$Res>
    extends _$OptionPlanStateCopyWithImpl<$Res>
    implements _$$_OptionPlanStateCopyWith<$Res> {
  __$$_OptionPlanStateCopyWithImpl(
      _$_OptionPlanState _value, $Res Function(_$_OptionPlanState) _then)
      : super(_value, (v) => _then(v as _$_OptionPlanState));

  @override
  _$_OptionPlanState get _value => super._value as _$_OptionPlanState;

  @override
  $Res call({
    Object? count = freezed,
    Object? planDisplayStatus = freezed,
    Object? optionPlanList = freezed,
  }) {
    return _then(_$_OptionPlanState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      planDisplayStatus: planDisplayStatus == freezed
          ? _value.planDisplayStatus
          : planDisplayStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      optionPlanList: optionPlanList == freezed
          ? _value._optionPlanList
          : optionPlanList // ignore: cast_nullable_to_non_nullable
              as List<OptionPlan>,
    ));
  }
}

/// @nodoc

class _$_OptionPlanState
    with DiagnosticableTreeMixin
    implements _OptionPlanState {
  const _$_OptionPlanState(
      {this.count = 0,
      this.planDisplayStatus = false,
      final List<OptionPlan> optionPlanList = const <OptionPlan>[]})
      : _optionPlanList = optionPlanList;

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final bool planDisplayStatus;
// @Default(ApplyStatus.notYet) ApplyStatus applyStatus,
// @Default(<Notice>[]) List<Notice> noticeList,
// @Default(<Order>[]) List<Order> orderList,
  final List<OptionPlan> _optionPlanList;
// @Default(ApplyStatus.notYet) ApplyStatus applyStatus,
// @Default(<Notice>[]) List<Notice> noticeList,
// @Default(<Order>[]) List<Order> orderList,
  @override
  @JsonKey()
  List<OptionPlan> get optionPlanList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionPlanList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OptionPlanState(count: $count, planDisplayStatus: $planDisplayStatus, optionPlanList: $optionPlanList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OptionPlanState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('planDisplayStatus', planDisplayStatus))
      ..add(DiagnosticsProperty('optionPlanList', optionPlanList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OptionPlanState &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.planDisplayStatus, planDisplayStatus) &&
            const DeepCollectionEquality()
                .equals(other._optionPlanList, _optionPlanList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(planDisplayStatus),
      const DeepCollectionEquality().hash(_optionPlanList));

  @JsonKey(ignore: true)
  @override
  _$$_OptionPlanStateCopyWith<_$_OptionPlanState> get copyWith =>
      __$$_OptionPlanStateCopyWithImpl<_$_OptionPlanState>(this, _$identity);
}

abstract class _OptionPlanState implements OptionPlanState {
  const factory _OptionPlanState(
      {final int count,
      final bool planDisplayStatus,
      final List<OptionPlan> optionPlanList}) = _$_OptionPlanState;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  bool get planDisplayStatus => throw _privateConstructorUsedError;
  @override // @Default(ApplyStatus.notYet) ApplyStatus applyStatus,
// @Default(<Notice>[]) List<Notice> noticeList,
// @Default(<Order>[]) List<Order> orderList,
  List<OptionPlan> get optionPlanList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OptionPlanStateCopyWith<_$_OptionPlanState> get copyWith =>
      throw _privateConstructorUsedError;
}
