import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_route/auto_route.dart';
import '../providers/budget_provider.dart';
import '../models/budget_category.dart';
import '../widgets/micro_widgets/category_icon.dart';
import '../widgets/micro_widgets/spend_status_chip.dart';
import '../widgets/micro_widgets/currency_text.dart';
import '../widgets/micro_widgets/progress_indicator.dart';

@RoutePage()
class CategoryDetailPage extends HookConsumerWidget {
  final String categoryId;

  const CategoryDetailPage({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final budgetState = ref.watch(budgetStateProvider);

    final category = budgetState.categories.firstWhere(
      (cat) => cat.finleyCategory.name == categoryId,
      orElse: () => throw Exception('Category not found'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(category.finleyCategoryName),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category Header Card
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).primaryColor.withOpacity(0.1),
                      Theme.of(context).primaryColor.withOpacity(0.05),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CategoryIcon(
                            category: category.finleyCategory,
                            size: 48,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  category.finleyCategoryName,
                                  style: GoogleFonts.inter(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                SpendStatusChip(status: category.spendStatus),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Spending Details
            Text(
              'Spending Details',
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),

            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildDetailItem(
                          'Amount Spent',
                          category.categorySpend,
                          Colors.red,
                          Icons.shopping_cart,
                        ),
                        _buildDetailItem(
                          'Remaining',
                          category.spendRemaining,
                          category.spendRemaining < 0
                              ? Colors.red
                              : Colors.green,
                          Icons.account_balance_wallet,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildDetailItem(
                          'Percentage Used',
                          category.spendPercentage,
                          category.spendPercentage > 100
                              ? Colors.red
                              : Colors.blue,
                          Icons.percent,
                        ),
                        _buildDetailItem(
                          'Status',
                          category.spendStatus == SpendStatus.underSpent
                              ? 1
                              : category.spendStatus ==
                                    SpendStatus.overThresholdSpent
                              ? 2
                              : 3,
                          category.spendStatus == SpendStatus.underSpent
                              ? Colors.green
                              : category.spendStatus ==
                                    SpendStatus.overThresholdSpent
                              ? Colors.orange
                              : Colors.red,
                          Icons.info,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Progress Visualization
            Text(
              'Budget Progress',
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),

            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: BudgetProgressIndicator(
                  percentage: category.spendPercentage,
                  spent: category.categorySpend,
                  remaining: category.spendRemaining,
                  height: 12,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Recommendations
            if (category.spendStatus == SpendStatus.overSpent)
              _buildRecommendationsCard(context, category),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(
    String label,
    dynamic value,
    Color color,
    IconData icon,
  ) {
    return Column(
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 4),
        if (value is double)
          CurrencyText(
            amount: value,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          )
        else
          Text(
            value.toString(),
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
      ],
    );
  }

  Widget _buildRecommendationsCard(
    BuildContext context,
    BudgetCategory category,
  ) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.red[50],
          border: Border.all(color: Colors.red[200]!),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.warning, color: Colors.red[600], size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Budget Alert',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.red[800],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                'You have exceeded your budget for ${category.finleyCategoryName.toLowerCase()}. Consider reducing expenses in this category.',
                style: GoogleFonts.inter(fontSize: 14, color: Colors.red[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
