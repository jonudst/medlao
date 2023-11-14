// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:medlao/feature/blood_match/presentation/blodd_match_page.dart'
    as _i1;
import 'package:medlao/feature/blood_stock/presentation/blood_stock_page.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    BloodMatchRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BloodMatchPage(),
      );
    },
    BloodStockRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BloodStockPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BloodMatchPage]
class BloodMatchRoute extends _i3.PageRouteInfo<void> {
  const BloodMatchRoute({List<_i3.PageRouteInfo>? children})
      : super(
          BloodMatchRoute.name,
          initialChildren: children,
        );

  static const String name = 'BloodMatchRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BloodStockPage]
class BloodStockRoute extends _i3.PageRouteInfo<void> {
  const BloodStockRoute({List<_i3.PageRouteInfo>? children})
      : super(
          BloodStockRoute.name,
          initialChildren: children,
        );

  static const String name = 'BloodStockRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
