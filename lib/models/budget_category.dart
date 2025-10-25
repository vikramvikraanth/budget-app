import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_category.freezed.dart';
part 'budget_category.g.dart';

enum FinleyCategory {
  @JsonValue('HOUSING_AND_UTILITIES')
  housingAndUtilities,
  @JsonValue('EDUCATION_AND_CHILDCARE')
  educationAndChildcare,
  @JsonValue('TRANSPORTATION')
  transportation,
  @JsonValue('HEALTHCARE_AND_MEDICAL')
  healthcareAndMedical,
  @JsonValue('INSURANCE')
  insurance,
  @JsonValue('LOANS_AND_CREDIT_CARDS')
  loansAndCreditCards,
  @JsonValue('GROCERIES')
  groceries,
  @JsonValue('ENTERTAINMENT')
  entertainment,
  @JsonValue('DINING_OUT')
  diningOut,
  @JsonValue('SHOPPING')
  shopping,
  @JsonValue('MISCELLANEOUS')
  miscellaneous,
  @JsonValue('TRAVEL')
  travel,
}

enum SpendStatus {
  @JsonValue('UNDER_SPENT')
  underSpent,
  @JsonValue('OVER_SPENT')
  overSpent,
  @JsonValue('OVER_THRESHOLD_SPENT')
  overThresholdSpent,
}

@freezed
class BudgetCategory with _$BudgetCategory {
  const factory BudgetCategory({
    required FinleyCategory finleyCategory,
    required String finleyCategoryName,
    required double categorySpend,
    required SpendStatus spendStatus,
    required double spendPercentage,
    required double spendRemaining,
  }) = _BudgetCategory;

  factory BudgetCategory.fromJson(Map<String, dynamic> json) =>
      _$BudgetCategoryFromJson(json);
}
