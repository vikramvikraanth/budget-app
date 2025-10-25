// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CategoryDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryDetailPage(
          key: args.key,
          categoryId: args.categoryId,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
  };
}

/// generated route for
/// [CategoryDetailPage]
class CategoryDetailRoute extends PageRouteInfo<CategoryDetailRouteArgs> {
  CategoryDetailRoute({
    Key? key,
    required String categoryId,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryDetailRoute.name,
          args: CategoryDetailRouteArgs(
            key: key,
            categoryId: categoryId,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryDetailRoute';

  static const PageInfo<CategoryDetailRouteArgs> page =
      PageInfo<CategoryDetailRouteArgs>(name);
}

class CategoryDetailRouteArgs {
  const CategoryDetailRouteArgs({
    this.key,
    required this.categoryId,
  });

  final Key? key;

  final String categoryId;

  @override
  String toString() {
    return 'CategoryDetailRouteArgs{key: $key, categoryId: $categoryId}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
