import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/budget_category.dart';
import '../micro_widgets/category_icon.dart';

class CategoryGrid extends StatelessWidget {
  final List<BudgetCategory> categories;

  const CategoryGrid({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 12,
        mainAxisSpacing: 16,
        childAspectRatio: 0.75,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return CategoryGridCard(
          category: category,
          onTap: () => _showCategoryDetails(context, category),
        );
      },
    );
  }

  void _showCategoryDetails(BuildContext context, BudgetCategory category) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => CategoryDetailBottomSheet(category: category),
    );
  }
}

class CategoryGridCard extends StatelessWidget {
  final BudgetCategory category;
  final VoidCallback onTap;

  const CategoryGridCard({
    super.key,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final statusColor = _getStatusColor(category.spendStatus);
    final progressPercentage = (category.spendPercentage / 100).clamp(0.0, 1.0);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCategoryName(),
            const SizedBox(height: 8),
            _buildProgressRing(statusColor, progressPercentage),

            const SizedBox(height: 4),
            _buildAmountText(),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressRing(Color statusColor, double progressPercentage) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),

          SizedBox(
            width: 50,
            height: 50,
            child: CircularProgressIndicator(
              value: progressPercentage,
              strokeWidth: 3,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(statusColor),
            ),
          ),
          Center(
            child: CategoryIcon(
              category: category.finleyCategory,
              size: 20,
              color: _getIconColor(category.finleyCategory),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryName() {
    return Text(
      _getCategoryDisplayName(category.finleyCategory),
      style: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.black87,
      ),
      textAlign: TextAlign.center,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildAmountText() {
    return Text(
      _getAmountText(category),
      style: GoogleFonts.inter(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: category.spendRemaining < 0
            ? const Color(0xFFE53935)
            : Colors.black54,
      ),
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  static Color _getStatusColor(SpendStatus status) {
    switch (status) {
      case SpendStatus.underSpent:
        return const Color(0xFF00C853);
      case SpendStatus.overThresholdSpent:
        return const Color(0xFFFFB300);
      case SpendStatus.overSpent:
        return const Color(0xFFE53935);
      default:
        return Colors.grey;
    }
  }

  Color _getIconColor(FinleyCategory category) {
    switch (category) {
      case FinleyCategory.housingAndUtilities:
        return Colors.brown;
      case FinleyCategory.educationAndChildcare:
        return Colors.black;
      case FinleyCategory.transportation:
        return Colors.red;
      case FinleyCategory.healthcareAndMedical:
        return Colors.red;
      case FinleyCategory.insurance:
        return Colors.red;
      case FinleyCategory.loansAndCreditCards:
        return Colors.amber;
      case FinleyCategory.groceries:
        return Colors.grey;
      case FinleyCategory.entertainment:
        return Colors.red;
      case FinleyCategory.diningOut:
        return Colors.yellow[700]!;
      case FinleyCategory.shopping:
        return Colors.red;
      case FinleyCategory.miscellaneous:
        return Colors.grey;
      case FinleyCategory.travel:
        return Colors.blue;
    }
  }

  String _getCategoryDisplayName(FinleyCategory category) {
    switch (category) {
      case FinleyCategory.housingAndUtilities:
        return 'Housing';
      case FinleyCategory.educationAndChildcare:
        return 'Education';
      case FinleyCategory.transportation:
        return 'Transport';
      case FinleyCategory.healthcareAndMedical:
        return 'Healthcare';
      case FinleyCategory.insurance:
        return 'Insurance';
      case FinleyCategory.loansAndCreditCards:
        return 'Loans';
      case FinleyCategory.groceries:
        return 'Groceries';
      case FinleyCategory.entertainment:
        return 'Entertain';
      case FinleyCategory.diningOut:
        return 'Dining Out';
      case FinleyCategory.shopping:
        return 'Shopping';
      case FinleyCategory.miscellaneous:
        return 'Misc';
      case FinleyCategory.travel:
        return 'Travel';
    }
  }

  String _getAmountText(BudgetCategory category) {
    if (category.spendRemaining > 0) {
      return '\$${category.spendRemaining.toStringAsFixed(2)} left';
    } else if (category.spendRemaining < 0) {
      return '\$${category.spendRemaining.abs().toStringAsFixed(2)} over limit';
    } else {
      return '\$0.00 left';
    }
  }
}

class CategoryDetailBottomSheet extends StatelessWidget {
  final BudgetCategory category;

  const CategoryDetailBottomSheet({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Handle bar
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Category header
            Row(
              children: [
                CategoryIcon(category: category.finleyCategory, size: 32),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category.finleyCategoryName,
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _getStatusText(category.spendStatus),
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: CategoryGridCard._getStatusColor(
                            category.spendStatus,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Details
            _buildDetailRow(
              'Amount Spent',
              '\$${category.categorySpend.toStringAsFixed(2)}',
            ),
            _buildDetailRow(
              'Budget Limit',
              '\$${(category.spendRemaining + category.categorySpend).toStringAsFixed(2)}',
            ),
            _buildDetailRow(
              'Percentage Used',
              '${category.spendPercentage.toStringAsFixed(1)}%',
            ),
            _buildDetailRow(
              'Remaining',
              category.spendRemaining >= 0
                  ? '\$${category.spendRemaining.toStringAsFixed(2)} left'
                  : '\$${category.spendRemaining.abs().toStringAsFixed(2)} over limit',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          Text(
            value,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  String _getStatusText(SpendStatus status) {
    switch (status) {
      case SpendStatus.underSpent:
        return 'Under Budget';
      case SpendStatus.overThresholdSpent:
        return 'Near Limit';
      case SpendStatus.overSpent:
        return 'Over Budget';
    }
  }
}
