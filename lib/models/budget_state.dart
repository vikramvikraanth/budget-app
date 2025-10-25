import 'package:freezed_annotation/freezed_annotation.dart';
import 'budget_category.dart';

part 'budget_state.freezed.dart';

@freezed
class BudgetState with _$BudgetState {
  const factory BudgetState({
    @Default([]) List<BudgetCategory> categories,
    @Default(false) bool isLoading,
    String? error,
  }) = _BudgetState;
}
