import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import '../../models/budget_category.dart';

class CategoryIcon extends StatelessWidget {
  final FinleyCategory category;
  final double size;
  final Color? color;

  const CategoryIcon({
    super.key,
    required this.category,
    this.size = 24.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      _getIconForCategory(category),
      size: size,
      color: color ?? Theme.of(context).primaryColor,
    );
  }

  IconData _getIconForCategory(FinleyCategory category) {
    switch (category) {
      case FinleyCategory.housingAndUtilities:
        return MaterialIcons.home; // House icon
      case FinleyCategory.educationAndChildcare:
        return MaterialIcons.school; // Graduation cap icon
      case FinleyCategory.transportation:
        return MaterialIcons.directions_car; // Car icon
      case FinleyCategory.healthcareAndMedical:
        return MaterialIcons.local_hospital; // Hospital icon
      case FinleyCategory.insurance:
        return MaterialIcons.security; // Shield icon
      case FinleyCategory.loansAndCreditCards:
        return MaterialIcons.credit_card; // Credit card icon
      case FinleyCategory.groceries:
        return MaterialIcons.shopping_cart; // Shopping cart icon
      case FinleyCategory.entertainment:
        return MaterialIcons.movie; // Balloon/Entertainment icon
      case FinleyCategory.diningOut:
        return MaterialIcons.restaurant; // Fork & knife icon
      case FinleyCategory.shopping:
        return MaterialIcons.shopping_basket; // Shopping bag icon
      case FinleyCategory.miscellaneous:
        return MaterialIcons.settings; // Gear/Settings icon
      case FinleyCategory.travel:
        return MaterialIcons.flight; // Airplane icon
    }
  }
}
