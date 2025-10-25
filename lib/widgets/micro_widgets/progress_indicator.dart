import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BudgetProgressIndicator extends StatelessWidget {
  final double percentage;
  final double spent;
  final double remaining;
  final Color? color;
  final double height;

  const BudgetProgressIndicator({
    super.key,
    required this.percentage,
    required this.spent,
    required this.remaining,
    this.color,
    this.height = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    final progressColor = color ?? _getProgressColor(percentage);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${percentage.toStringAsFixed(1)}%',
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: progressColor,
              ),
            ),
            Text(
              'Remaining: \$${remaining.abs().toStringAsFixed(2)}',
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(height / 2),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: (percentage / 100).clamp(0.0, 1.0),
            child: Container(
              decoration: BoxDecoration(
                color: progressColor,
                borderRadius: BorderRadius.circular(height / 2),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Color _getProgressColor(double percentage) {
    if (percentage >= 100) return Colors.red;
    if (percentage >= 80) return Colors.orange;
    return Colors.green;
  }
}
