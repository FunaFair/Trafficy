import 'package:auto_route/auto_route.dart';

import 'package:trafficy/Source/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page),
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
      ];
}