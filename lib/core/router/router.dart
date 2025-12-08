import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter(this.logger);

  final Logger logger;

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  late final List<AutoRouteGuard> guards = [];

  @override
  List<AutoRoute> get routes => [
        ...customRoutes,
        AutoRoute(page: HomeRoute.page, path: '/home', initial: true),
        AutoRoute(page: ProjectsRoute.page, path: '/projects'),
        ...redirections,
      ];

  List<CustomRoute> get customRoutes => [];

  List<RedirectRoute> get redirections => [
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
