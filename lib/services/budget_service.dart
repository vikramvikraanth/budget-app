import 'dart:convert';
import '../models/budget_category.dart';

class BudgetService {
  Future<List<BudgetCategory>> getBudgetCategories() async {
    // Simulate API call delay
    await Future.delayed(const Duration(seconds: 1));

    // Mock data based on the API response
    final mockData = [
      {
        "finleyCategory": "HOUSING_AND_UTILITIES",
        "finleyCategoryName": "Housing & Utilities",
        "categorySpend": 0.0,
        "spendStatus": "UNDER_SPENT",
        "spendPercentage": 0.0,
        "spendRemaining": 0.0,
      },
      {
        "finleyCategory": "EDUCATION_AND_CHILDCARE",
        "finleyCategoryName": "Education & Childcare",
        "categorySpend": 0.0,
        "spendStatus": "UNDER_SPENT",
        "spendPercentage": 0.0,
        "spendRemaining": 0.0,
      },
      {
        "finleyCategory": "TRANSPORTATION",
        "finleyCategoryName": "Transportation",
        "categorySpend": 11.73,
        "spendStatus": "UNDER_SPENT",
        "spendPercentage": 15.79,
        "spendRemaining": 62.56,
      },
      {
        "finleyCategory": "HEALTHCARE_AND_MEDICAL",
        "finleyCategoryName": "Healthcare & Medical",
        "categorySpend": 0.0,
        "spendStatus": "UNDER_SPENT",
        "spendPercentage": 0.0,
        "spendRemaining": 0.0,
      },
      {
        "finleyCategory": "INSURANCE",
        "finleyCategoryName": "Insurance",
        "categorySpend": 0.0,
        "spendStatus": "UNDER_SPENT",
        "spendPercentage": 0.0,
        "spendRemaining": 0.0,
      },
      {
        "finleyCategory": "LOANS_AND_CREDIT_CARDS",
        "finleyCategoryName": "Loans & Credit Cards",
        "categorySpend": 0.0,
        "spendStatus": "UNDER_SPENT",
        "spendPercentage": 0.0,
        "spendRemaining": 0.0,
      },
      {
        "finleyCategory": "GROCERIES",
        "finleyCategoryName": "Groceries",
        "categorySpend": 0.0,
        "spendStatus": "UNDER_SPENT",
        "spendPercentage": 0.0,
        "spendRemaining": 0.0,
      },
      {
        "finleyCategory": "ENTERTAINMENT",
        "finleyCategoryName": "Entertainment",
        "categorySpend": 78.5,
        "spendStatus": "OVER_SPENT",
        "spendPercentage": 402.56,
        "spendRemaining": -59.0,
      },
      {
        "finleyCategory": "DINING_OUT",
        "finleyCategoryName": "Dining Out",
        "categorySpend": 16.33,
        "spendStatus": "OVER_THRESHOLD_SPENT",
        "spendPercentage": 83.74,
        "spendRemaining": 3.17,
      },
      {
        "finleyCategory": "SHOPPING",
        "finleyCategoryName": "Shopping",
        "categorySpend": 1089.4,
        "spendStatus": "OVER_SPENT",
        "spendPercentage": 5586.67,
        "spendRemaining": -1069.9,
      },
      {
        "finleyCategory": "MISCELLANEOUS",
        "finleyCategoryName": "Miscellaneous",
        "categorySpend": 0.0,
        "spendStatus": "UNDER_SPENT",
        "spendPercentage": 0.0,
        "spendRemaining": 29250.0,
      },
      {
        "finleyCategory": "TRAVEL",
        "finleyCategoryName": "Travel",
        "categorySpend": 0.0,
        "spendStatus": "UNDER_SPENT",
        "spendPercentage": 0.0,
        "spendRemaining": 0.0,
      },
    ];

    return mockData.map((json) => BudgetCategory.fromJson(json)).toList();
  }
}
