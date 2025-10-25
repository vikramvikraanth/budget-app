import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrencyText extends StatelessWidget {
  final double amount;
  final TextStyle? style;
  final TextAlign? textAlign;
  final bool showSign;

  const CurrencyText({
    super.key,
    required this.amount,
    this.style,
    this.textAlign,
    this.showSign = false,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = GoogleFonts.inter(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: amount < 0 ? Colors.red : Colors.black87,
    );

    return Text(
      _formatCurrency(amount),
      style: style ?? defaultStyle,
      textAlign: textAlign,
    );
  }

  String _formatCurrency(double amount) {
    final sign = showSign && amount != 0 ? (amount > 0 ? '+' : '') : '';
    return '$sign\$${amount.abs().toStringAsFixed(2)}';
  }
}
