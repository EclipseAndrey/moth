import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moth/app/router/guards/auth_guard.dart';
import 'package:moth/features/account/presentation/ui/account_screen.dart';
import 'package:moth/features/auth/login/presentation/ui/login_screen.dart';
import 'package:moth/features/auth/register/presentation/ui/register_screen.dart';
import 'package:moth/features/discovery_test/presentation/ui/discovery_test_screen.dart';
import 'package:moth/features/home/presentation/ui/home_page.dart';
import 'package:moth/features/splash/presentation/ui/splash_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: DiscoveryTestRoute.page, type: const RouteType.cupertino(), path: '/discovery'),
    AutoRoute(page: HomeRoute.page, type: const RouteType.cupertino(), path: '/home', guards: [AuthGuard()]),
    AutoRoute(page: SplashRoute.page, type: const RouteType.cupertino(), path: '/'),
    AutoRoute(page: LoginRoute.page, type: const RouteType.cupertino(), path: '/login'),
    AutoRoute(page: RegistrationRoute.page, type: const RouteType.cupertino(), path: '/login'),
    AutoRoute(page: AccountRoute.page, type: const RouteType.cupertino(), path: '/login'),
  ];
}
