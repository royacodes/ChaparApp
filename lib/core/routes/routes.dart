import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/auth/auth.dart';
import '../../features/consignment/consignment.dart';
import '../../features/delivery/delivery.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            initial: true,
            page: LoginRoute.page,
            transitionsBuilder: TransitionsBuilders.slideBottom),
        CustomRoute(
            page: ConsignmentListRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            page: DeliveryRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn),
      ];
}
