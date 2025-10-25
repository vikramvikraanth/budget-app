import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/budget_category.dart';

class SpendStatusChip extends StatelessWidget {
  final SpendStatus status;
  final double? width;
  final double? height;

  const SpendStatusChip({
    super.key,
    required this.status,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: _getStatusColor(status),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        _getStatusText(status),
        style: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color _getStatusColor(SpendStatus status) {
    switch (status) {
      case SpendStatus.underSpent:
        return Colors.green;
      case SpendStatus.overSpent:
        return Colors.red;
      case SpendStatus.overThresholdSpent:
        return Colors.orange;
    }
  }

  String _getStatusText(SpendStatus status) {
    switch (status) {
      case SpendStatus.underSpent:
        return 'Under Budget';
      case SpendStatus.overSpent:
        return 'Over Budget';
      case SpendStatus.overThresholdSpent:
        return 'Near Limit';
    }
  }
}
