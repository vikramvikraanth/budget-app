// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BudgetCategory _$BudgetCategoryFromJson(Map<String, dynamic> json) {
  return _BudgetCategory.fromJson(json);
}

/// @nodoc
mixin _$BudgetCategory {
  FinleyCategory get finleyCategory => throw _privateConstructorUsedError;
  String get finleyCategoryName => throw _privateConstructorUsedError;
  double get categorySpend => throw _privateConstructorUsedError;
  SpendStatus get spendStatus => throw _privateConstructorUsedError;
  double get spendPercentage => throw _privateConstructorUsedError;
  double get spendRemaining => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BudgetCategoryCopyWith<BudgetCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetCategoryCopyWith<$Res> {
  factory $BudgetCategoryCopyWith(
          BudgetCategory value, $Res Function(BudgetCategory) then) =
      _$BudgetCategoryCopyWithImpl<$Res, BudgetCategory>;
  @useResult
  $Res call(
      {FinleyCategory finleyCategory,
      String finleyCategoryName,
      double categorySpend,
      SpendStatus spendStatus,
      double spendPercentage,
      double spendRemaining});
}

/// @nodoc
class _$BudgetCategoryCopyWithImpl<$Res, $Val extends BudgetCategory>
    implements $BudgetCategoryCopyWith<$Res> {
  _$BudgetCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finleyCategory = null,
    Object? finleyCategoryName = null,
    Object? categorySpend = null,
    Object? spendStatus = null,
    Object? spendPercentage = null,
    Object? spendRemaining = null,
  }) {
    return _then(_value.copyWith(
      finleyCategory: null == finleyCategory
          ? _value.finleyCategory
          : finleyCategory // ignore: cast_nullable_to_non_nullable
              as FinleyCategory,
      finleyCategoryName: null == finleyCategoryName
          ? _value.finleyCategoryName
          : finleyCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categorySpend: null == categorySpend
          ? _value.categorySpend
          : categorySpend // ignore: cast_nullable_to_non_nullable
              as double,
      spendStatus: null == spendStatus
          ? _value.spendStatus
          : spendStatus // ignore: cast_nullable_to_non_nullable
              as SpendStatus,
      spendPercentage: null == spendPercentage
          ? _value.spendPercentage
          : spendPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      spendRemaining: null == spendRemaining
          ? _value.spendRemaining
          : spendRemaining // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BudgetCategoryImplCopyWith<$Res>
    implements $BudgetCategoryCopyWith<$Res> {
  factory _$$BudgetCategoryImplCopyWith(_$BudgetCategoryImpl value,
          $Res Function(_$BudgetCategoryImpl) then) =
      __$$BudgetCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FinleyCategory finleyCategory,
      String finleyCategoryName,
      double categorySpend,
      SpendStatus spendStatus,
      double spendPercentage,
      double spendRemaining});
}

/// @nodoc
class __$$BudgetCategoryImplCopyWithImpl<$Res>
    extends _$BudgetCategoryCopyWithImpl<$Res, _$BudgetCategoryImpl>
    implements _$$BudgetCategoryImplCopyWith<$Res> {
  __$$BudgetCategoryImplCopyWithImpl(
      _$BudgetCategoryImpl _value, $Res Function(_$BudgetCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? finleyCategory = null,
    Object? finleyCategoryName = null,
    Object? categorySpend = null,
    Object? spendStatus = null,
    Object? spendPercentage = null,
    Object? spendRemaining = null,
  }) {
    return _then(_$BudgetCategoryImpl(
      finleyCategory: null == finleyCategory
          ? _value.finleyCategory
          : finleyCategory // ignore: cast_nullable_to_non_nullable
              as FinleyCategory,
      finleyCategoryName: null == finleyCategoryName
          ? _value.finleyCategoryName
          : finleyCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categorySpend: null == categorySpend
          ? _value.categorySpend
          : categorySpend // ignore: cast_nullable_to_non_nullable
              as double,
      spendStatus: null == spendStatus
          ? _value.spendStatus
          : spendStatus // ignore: cast_nullable_to_non_nullable
              as SpendStatus,
      spendPercentage: null == spendPercentage
          ? _value.spendPercentage
          : spendPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      spendRemaining: null == spendRemaining
          ? _value.spendRemaining
          : spendRemaining // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetCategoryImpl implements _BudgetCategory {
  const _$BudgetCategoryImpl(
      {required this.finleyCategory,
      required this.finleyCategoryName,
      required this.categorySpend,
      required this.spendStatus,
      required this.spendPercentage,
      required this.spendRemaining});

  factory _$BudgetCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetCategoryImplFromJson(json);

  @override
  final FinleyCategory finleyCategory;
  @override
  final String finleyCategoryName;
  @override
  final double categorySpend;
  @override
  final SpendStatus spendStatus;
  @override
  final double spendPercentage;
  @override
  final double spendRemaining;

  @override
  String toString() {
    return 'BudgetCategory(finleyCategory: $finleyCategory, finleyCategoryName: $finleyCategoryName, categorySpend: $categorySpend, spendStatus: $spendStatus, spendPercentage: $spendPercentage, spendRemaining: $spendRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetCategoryImpl &&
            (identical(other.finleyCategory, finleyCategory) ||
                other.finleyCategory == finleyCategory) &&
            (identical(other.finleyCategoryName, finleyCategoryName) ||
                other.finleyCategoryName == finleyCategoryName) &&
            (identical(other.categorySpend, categorySpend) ||
                other.categorySpend == categorySpend) &&
            (identical(other.spendStatus, spendStatus) ||
                other.spendStatus == spendStatus) &&
            (identical(other.spendPercentage, spendPercentage) ||
                other.spendPercentage == spendPercentage) &&
            (identical(other.spendRemaining, spendRemaining) ||
                other.spendRemaining == spendRemaining));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      finleyCategory,
      finleyCategoryName,
      categorySpend,
      spendStatus,
      spendPercentage,
      spendRemaining);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetCategoryImplCopyWith<_$BudgetCategoryImpl> get copyWith =>
      __$$BudgetCategoryImplCopyWithImpl<_$BudgetCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetCategoryImplToJson(
      this,
    );
  }
}

abstract class _BudgetCategory implements BudgetCategory {
  const factory _BudgetCategory(
      {required final FinleyCategory finleyCategory,
      required final String finleyCategoryName,
      required final double categorySpend,
      required final SpendStatus spendStatus,
      required final double spendPercentage,
      required final double spendRemaining}) = _$BudgetCategoryImpl;

  factory _BudgetCategory.fromJson(Map<String, dynamic> json) =
      _$BudgetCategoryImpl.fromJson;

  @override
  FinleyCategory get finleyCategory;
  @override
  String get finleyCategoryName;
  @override
  double get categorySpend;
  @override
  SpendStatus get spendStatus;
  @override
  double get spendPercentage;
  @override
  double get spendRemaining;
  @override
  @JsonKey(ignore: true)
  _$$BudgetCategoryImplCopyWith<_$BudgetCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
