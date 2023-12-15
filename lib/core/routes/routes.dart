import 'package:auto_route/auto_route.dart';

import '../../features/auth/auth.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            initial: true,
            page: LoginRoute.page,
            transitionsBuilder: TransitionsBuilders.slideBottom),
      ];
}
