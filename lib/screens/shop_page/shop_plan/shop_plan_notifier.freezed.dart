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
  bool get planDisplayStatus => throw _privateConstructorUsedError;
  List<ShopPlan> get shopPlanList => throw _privateConstructorUsedError;
  List<OptionPlan> get optionPlanList => throw _privateConstructorUsedError;
  List<SubCategory> get subCategoryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopPlanStateCopyWith<ShopPlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopPlanStateCopyWith<$Res> {
  factory $ShopPlanStateCopyWith(
          ShopPlanState value, $Res Function(ShopPlanState) then) =
      _$ShopPlanStateCopyWithImpl<$Res>;
  $Res call(
      {int count,
      bool planDisplayStatus,
      List<ShopPlan> shopPlanList,
      List<OptionPlan> optionPlanList,
      List<SubCategory> subCategoryList});
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
    Object? planDisplayStatus = freezed,
    Object? shopPlanList = freezed,
    Object? optionPlanList = freezed,
    Object? subCategoryList = freezed,
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
      shopPlanList: shopPlanList == freezed
          ? _value.shopPlanList
          : shopPlanList // ignore: cast_nullable_to_non_nullable
              as List<ShopPlan>,
      optionPlanList: optionPlanList == freezed
          ? _value.optionPlanList
          : optionPlanList // ignore: cast_nullable_to_non_nullable
              as List<OptionPlan>,
      subCategoryList: subCategoryList == freezed
          ? _value.subCategoryList
          : subCategoryList // ignore: cast_nullable_to_non_nullable
              as List<SubCategory>,
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
  $Res call(
      {int count,
      bool planDisplayStatus,
      List<ShopPlan> shopPlanList,
      List<OptionPlan> optionPlanList,
      List<SubCategory> subCategoryList});
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
    Object? planDisplayStatus = freezed,
    Object? shopPlanList = freezed,
    Object? optionPlanList = freezed,
    Object? subCategoryList = freezed,
  }) {
    return _then(_$_ShopPlanState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      planDisplayStatus: planDisplayStatus == freezed
          ? _value.planDisplayStatus
          : planDisplayStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      shopPlanList: shopPlanList == freezed
          ? _value._shopPlanList
          : shopPlanList // ignore: cast_nullable_to_non_nullable
              as List<ShopPlan>,
      optionPlanList: optionPlanList == freezed
          ? _value._optionPlanList
          : optionPlanList // ignore: cast_nullable_to_non_nullable
              as List<OptionPlan>,
      subCategoryList: subCategoryList == freezed
          ? _value._subCategoryList
          : subCategoryList // ignore: cast_nullable_to_non_nullable
              as List<SubCategory>,
    ));
  }
}

/// @nodoc

class _$_ShopPlanState with DiagnosticableTreeMixin implements _ShopPlanState {
  const _$_ShopPlanState(
      {this.count = 0,
      this.planDisplayStatus = false,
      final List<ShopPlan> shopPlanList = const <ShopPlan>[],
      final List<OptionPlan> optionPlanList = const <OptionPlan>[],
      final List<SubCategory> subCategoryList = const <SubCategory>[]})
      : _shopPlanList = shopPlanList,
        _optionPlanList = optionPlanList,
        _subCategoryList = subCategoryList;

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final bool planDisplayStatus;
  final List<ShopPlan> _shopPlanList;
  @override
  @JsonKey()
  List<ShopPlan> get shopPlanList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shopPlanList);
  }

  final List<OptionPlan> _optionPlanList;
  @override
  @JsonKey()
  List<OptionPlan> get optionPlanList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionPlanList);
  }

  final List<SubCategory> _subCategoryList;
  @override
  @JsonKey()
  List<SubCategory> get subCategoryList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategoryList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopPlanState(count: $count, planDisplayStatus: $planDisplayStatus, shopPlanList: $shopPlanList, optionPlanList: $optionPlanList, subCategoryList: $subCategoryList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopPlanState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('planDisplayStatus', planDisplayStatus))
      ..add(DiagnosticsProperty('shopPlanList', shopPlanList))
      ..add(DiagnosticsProperty('optionPlanList', optionPlanList))
      ..add(DiagnosticsProperty('subCategoryList', subCategoryList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopPlanState &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.planDisplayStatus, planDisplayStatus) &&
            const DeepCollectionEquality()
                .equals(other._shopPlanList, _shopPlanList) &&
            const DeepCollectionEquality()
                .equals(other._optionPlanList, _optionPlanList) &&
            const DeepCollectionEquality()
                .equals(other._subCategoryList, _subCategoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(planDisplayStatus),
      const DeepCollectionEquality().hash(_shopPlanList),
      const DeepCollectionEquality().hash(_optionPlanList),
      const DeepCollectionEquality().hash(_subCategoryList));

  @JsonKey(ignore: true)
  @override
  _$$_ShopPlanStateCopyWith<_$_ShopPlanState> get copyWith =>
      __$$_ShopPlanStateCopyWithImpl<_$_ShopPlanState>(this, _$identity);
}

abstract class _ShopPlanState implements ShopPlanState {
  const factory _ShopPlanState(
      {final int count,
      final bool planDisplayStatus,
      final List<ShopPlan> shopPlanList,
      final List<OptionPlan> optionPlanList,
      final List<SubCategory> subCategoryList}) = _$_ShopPlanState;

  @override
  int get count;
  @override
  bool get planDisplayStatus;
  @override
  List<ShopPlan> get shopPlanList;
  @override
  List<OptionPlan> get optionPlanList;
  @override
  List<SubCategory> get subCategoryList;
  @override
  @JsonKey(ignore: true)
  _$$_ShopPlanStateCopyWith<_$_ShopPlanState> get copyWith =>
      throw _privateConstructorUsedError;
}
