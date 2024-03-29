// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    ConsignmentListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ConsignmentListPage(),
      );
    },
    DeliveryRoute.name: (routeData) {
      final args = routeData.argsAs<DeliveryRouteArgs>(
          orElse: () => const DeliveryRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DeliveryPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ConsignmentListPage]
class ConsignmentListRoute extends PageRouteInfo<void> {
  const ConsignmentListRoute({List<PageRouteInfo>? children})
      : super(
          ConsignmentListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConsignmentListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeliveryPage]
class DeliveryRoute extends PageRouteInfo<DeliveryRouteArgs> {
  DeliveryRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DeliveryRoute.name,
          args: DeliveryRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'DeliveryRoute';

  static const PageInfo<DeliveryRouteArgs> page =
      PageInfo<DeliveryRouteArgs>(name);
}

class DeliveryRouteArgs {
  const DeliveryRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'DeliveryRouteArgs{key: $key}';
  }
}
