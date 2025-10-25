import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/category_detail_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: '/', initial: true),
    AutoRoute(page: CategoryDetailRoute.page, path: '/category/:categoryId'),
  ];
}
