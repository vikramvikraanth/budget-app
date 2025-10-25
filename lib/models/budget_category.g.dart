// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BudgetCategoryImpl _$$BudgetCategoryImplFromJson(Map<String, dynamic> json) =>
    _$BudgetCategoryImpl(
      finleyCategory:
          $enumDecode(_$FinleyCategoryEnumMap, json['finleyCategory']),
      finleyCategoryName: json['finleyCategoryName'] as String,
      categorySpend: (json['categorySpend'] as num).toDouble(),
      spendStatus: $enumDecode(_$SpendStatusEnumMap, json['spendStatus']),
      spendPercentage: (json['spendPercentage'] as num).toDouble(),
      spendRemaining: (json['spendRemaining'] as num).toDouble(),
    );

Map<String, dynamic> _$$BudgetCategoryImplToJson(
        _$BudgetCategoryImpl instance) =>
    <String, dynamic>{
      'finleyCategory': _$FinleyCategoryEnumMap[instance.finleyCategory]!,
      'finleyCategoryName': instance.finleyCategoryName,
      'categorySpend': instance.categorySpend,
      'spendStatus': _$SpendStatusEnumMap[instance.spendStatus]!,
      'spendPercentage': instance.spendPercentage,
      'spendRemaining': instance.spendRemaining,
    };

const _$FinleyCategoryEnumMap = {
  FinleyCategory.housingAndUtilities: 'HOUSING_AND_UTILITIES',
  FinleyCategory.educationAndChildcare: 'EDUCATION_AND_CHILDCARE',
  FinleyCategory.transportation: 'TRANSPORTATION',
  FinleyCategory.healthcareAndMedical: 'HEALTHCARE_AND_MEDICAL',
  FinleyCategory.insurance: 'INSURANCE',
  FinleyCategory.loansAndCreditCards: 'LOANS_AND_CREDIT_CARDS',
  FinleyCategory.groceries: 'GROCERIES',
  FinleyCategory.entertainment: 'ENTERTAINMENT',
  FinleyCategory.diningOut: 'DINING_OUT',
  FinleyCategory.shopping: 'SHOPPING',
  FinleyCategory.miscellaneous: 'MISCELLANEOUS',
  FinleyCategory.travel: 'TRAVEL',
};

const _$SpendStatusEnumMap = {
  SpendStatus.underSpent: 'UNDER_SPENT',
  SpendStatus.overSpent: 'OVER_SPENT',
  SpendStatus.overThresholdSpent: 'OVER_THRESHOLD_SPENT',
};
