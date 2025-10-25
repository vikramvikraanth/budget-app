# Budget Tracker Flutter App

A modern Flutter budget tracking application built with clean architecture, state management, and beautiful UI components. The app provides comprehensive budget management across 12 spending categories with real-time tracking and visual progress indicators.

## 🚀 Features

- 📊 **Budget Overview**: Visual summary of spending across all categories
- 🏷️ **Category Management**: Track spending in 12 different budget categories
- 📈 **Progress Tracking**: Visual progress indicators with circular progress rings
- 🎨 **Modern UI**: Clean, responsive design with Material 3 and Google Fonts
- 🔄 **Real-time Updates**: Live state management with Riverpod
- 📱 **Navigation**: Type-safe routing with AutoRoute
- 🎯 **Status Indicators**: Color-coded spending status (Under Budget, Near Limit, Over Budget)
- 💰 **Currency Formatting**: Automatic currency display with proper formatting
- 📊 **Detailed Views**: Comprehensive category detail pages with spending analytics

## 🏗️ Architecture

### State Management
- **Riverpod**: For state management and dependency injection
- **Flutter Hooks**: For reactive UI components and lifecycle management
- **Freezed**: For immutable data classes with code generation

### Navigation
- **AutoRoute**: Type-safe routing with code generation
- **Route Guards**: Automatic route parameter handling

### UI Components
- **Micro Widgets**: Reusable, composable UI components
- **Google Fonts**: Typography with Inter font family
- **Icons Flutter**: Comprehensive Material Icons library
- **Material 3**: Modern design system implementation

## 📁 Project Structure

```
lib/
├── models/                 # Data models and entities
│   ├── budget_category.dart    # Budget category model with enums
│   ├── budget_state.dart       # Application state model
│   └── *.freezed.dart          # Generated immutable classes
├── providers/              # Riverpod providers
│   └── budget_provider.dart    # State management logic
├── services/               # Business logic and API calls
│   └── budget_service.dart     # Data fetching and API integration
├── routes/                 # Navigation configuration
│   ├── app_router.dart         # Route definitions
│   └── app_router.gr.dart      # Generated route code
├── pages/                  # Screen components
│   ├── home_page.dart          # Main dashboard
│   └── category_detail_page.dart # Category details
└── widgets/                # Reusable UI components
    ├── micro_widgets/      # Small, focused widgets
    │   ├── spend_status_chip.dart    # Status indicator chips
    │   ├── currency_text.dart        # Formatted currency display
    │   ├── progress_indicator.dart   # Progress bar component
    │   └── category_icon.dart        # Category-specific icons
    └── components/         # Complex UI components
        ├── category_grid_card.dart   # Category grid display
        ├── custom_app_bar.dart       # Custom app bar
        └── empty_placeholder.dart    # Empty state component
```

## 💳 Budget Categories

The app tracks spending across 12 comprehensive categories:

1. **Housing & Utilities** 🏠 - Home expenses and utility bills
2. **Education & Childcare** 🎓 - Educational expenses and childcare
3. **Transportation** 🚗 - Vehicle expenses and transportation costs
4. **Healthcare & Medical** 🏥 - Medical expenses and healthcare
5. **Insurance** 🛡️ - Insurance premiums and coverage
6. **Loans & Credit Cards** 💳 - Loan payments and credit card bills
7. **Groceries** 🛒 - Food and household essentials
8. **Entertainment** 🎬 - Entertainment and leisure activities
9. **Dining Out** 🍽️ - Restaurant meals and dining expenses
10. **Shopping** 🛍️ - Retail purchases and shopping
11. **Miscellaneous** 📦 - Other uncategorized expenses
12. **Travel** ✈️ - Travel expenses and vacations

## 🎨 UI Components

### Micro Widgets

#### SpendStatusChip
Color-coded status indicators:
- 🟢 **Under Budget**: Green indicator for categories within budget
- 🟠 **Near Limit**: Orange indicator for categories approaching limit
- 🔴 **Over Budget**: Red indicator for categories exceeding budget

#### CurrencyText
Formatted currency display with:
- Automatic sign handling for positive/negative values
- Consistent dollar sign formatting
- Color coding based on amount (red for negative, black for positive)

#### BudgetProgressIndicator
Visual progress tracking featuring:
- Percentage display with color coding
- Progress bar with dynamic colors
- Remaining amount display
- Responsive height configuration

#### CategoryIcon
Category-specific icons using Material Icons:
- Contextual icons for each budget category
- Consistent sizing and theming
- Color customization support

### Complex Components

#### CategoryGridCard
Main category display featuring:
- Circular progress ring with category icon
- Spending status chip
- Amount spent and remaining display
- Tap navigation to detailed views
- Responsive grid layout (4 columns)

#### CategoryDetailBottomSheet
Modal bottom sheet with:
- Category header with icon and status
- Detailed spending breakdown
- Budget limit and percentage information
- Remaining amount calculations

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.9.2 or higher)
- Dart SDK
- Android Studio / VS Code with Flutter extensions

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd budget
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code**
   ```bash
   flutter packages pub run build_runner build
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

## 📦 Dependencies

### Core Dependencies
- `flutter_riverpod: ^2.4.9` - State management and dependency injection
- `flutter_hooks: ^0.20.5` - Reactive UI components
- `hooks_riverpod: ^2.4.9` - Riverpod + Hooks integration
- `auto_route: ^7.8.4` - Type-safe navigation
- `google_fonts: ^6.1.0` - Typography with Inter font
- `icons_flutter: ^0.0.5` - Material Icons library

### Development Dependencies
- `build_runner: ^2.4.7` - Code generation
- `freezed: ^2.4.6` - Immutable data classes
- `json_serializable: ^6.7.1` - JSON serialization
- `auto_route_generator: ^7.3.2` - Route generation
- `flutter_lints: ^5.0.0` - Code quality and linting

## 🔄 State Management Flow

1. **BudgetService** fetches data from API/mock data
2. **BudgetNotifier** manages state updates and loading states
3. **UI Components** react to state changes automatically
4. **Navigation** handles screen transitions with type safety

## 🎨 Theming & Customization

### Design System
- **Primary Color**: `#00C853` (Material Green)
- **Font Family**: Inter (Google Fonts)
- **Material 3**: Modern design system implementation
- **Color Scheme**: Dynamic color scheme generation

### Adding New Categories
1. Add enum value to `FinleyCategory` in `budget_category.dart`
2. Update `CategoryIcon` mapping in `category_icon.dart`
3. Regenerate code with `flutter packages pub run build_runner build`

## 📊 Data Structure

The app uses a structured data model that matches API responses:

```json
{
  "finleyCategory": "ENTERTAINMENT",
  "finleyCategoryName": "Entertainment", 
  "categorySpend": 78.5,
  "spendStatus": "OVER_SPENT",
  "spendPercentage": 402.56,
  "spendRemaining": -59.0
}
```

## 🚀 Performance Optimizations

- **Const constructors** for static widgets to prevent unnecessary rebuilds
- **Micro widgets** to reduce rebuild scope and improve performance
- **Riverpod providers** for efficient state updates and caching
- **Lazy loading** for large datasets and images
- **Memoization** with Flutter Hooks for expensive calculations

## 🧪 Testing

```bash
# Run unit tests
flutter test

# Run integration tests  
flutter test integration_test/

# Run with coverage
flutter test --coverage
```

## 📱 Platform Support

- ✅ **Android** - Full support with Material Design
- ✅ **iOS** - Full support with Cupertino design elements
- ✅ **Web** - Responsive web application
- ✅ **Windows** - Desktop application support
- ✅ **macOS** - Desktop application support
- ✅ **Linux** - Desktop application support

## 🤝 Contributing

1. Follow the established architecture patterns
2. Use micro widgets for reusable components
3. Maintain consistent naming conventions
4. Add tests for new features
5. Update documentation
6. Follow Flutter best practices and linting rules

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🔧 Development Notes

- The app uses mock data that simulates real API responses
- All generated files are included in the repository
- The app follows Flutter's recommended project structure
- State management is handled entirely through Riverpod
- Navigation is type-safe with AutoRoute code generation