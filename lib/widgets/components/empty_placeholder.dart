import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyPlaceholder extends StatelessWidget {
  const EmptyPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: const Color(0xFFE8F5E8), // Light green background
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFF00C853).withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          'Keep this empty',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF00C853),
          ),
        ),
      ),
    );
  }
}
