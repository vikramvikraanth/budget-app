import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/budget_state.dart';
import '../services/budget_service.dart';

final budgetServiceProvider = Provider<BudgetService>((ref) {
  return BudgetService();
});

final budgetStateProvider = StateNotifierProvider<BudgetNotifier, BudgetState>((
  ref,
) {
  final service = ref.watch(budgetServiceProvider);
  return BudgetNotifier(service);
});

class BudgetNotifier extends StateNotifier<BudgetState> {
  final BudgetService _service;

  BudgetNotifier(this._service) : super(const BudgetState()) {
    loadBudgetData();
  }

  Future<void> loadBudgetData() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final categories = await _service.getBudgetCategories();
      state = state.copyWith(
        categories: categories,
        isLoading: false,
        error: null,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void refreshBudgetData() {
    loadBudgetData();
  }
}
