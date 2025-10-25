import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/budget_category.dart';
import '../micro_widgets/currency_text.dart';

class BudgetSummaryCard extends StatelessWidget {
  final List<BudgetCategory> categories;

  const BudgetSummaryCard({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    final totalSpent = categories.fold<double>(
      0.0,
      (sum, category) => sum + category.categorySpend,
    );

    final totalRemaining = categories.fold<double>(
      0.0,
      (sum, category) => sum + category.spendRemaining,
    );

    final overSpentCategories = categories
        .where((category) => category.spendStatus == SpendStatus.overSpent)
        .length;

    final nearLimitCategories = categories
        .where(
          (category) => category.spendStatus == SpendStatus.overThresholdSpent,
        )
        .length;

    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet,
                    color: Theme.of(context).primaryColor,
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Budget Overview',
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: _buildSummaryItem(
                      'Total Spent',
                      totalSpent,
                      Colors.red,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildSummaryItem(
                      'Total Remaining',
                      totalRemaining,
                      totalRemaining < 0 ? Colors.red : Colors.green,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _buildAlertItem(
                      'Over Budget',
                      overSpentCategories,
                      Colors.red,
                      Icons.warning,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildAlertItem(
                      'Near Limit',
                      nearLimitCategories,
                      Colors.orange,
                      Icons.info,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryItem(String label, double amount, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.grey[600],
          ),
        ),
        const SizedBox(height: 4),
        CurrencyText(
          amount: amount,
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buildAlertItem(String label, int count, Color color, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 16, color: color),
            const SizedBox(width: 4),
            Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          count.toString(),
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: color,
          ),
        ),
      ],
    );
  }
}
