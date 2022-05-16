// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../models/pokenmon_form_model/pokenmon_form_model.dart' as _i5;
import '../pages/main_pokenmon_page.dart' as _i1;
import '../pages/poken_detail_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainPokemonRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.MainPokemonPage());
    },
    PokenmonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PokenmonDetailRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.PokenmonDetailPage(
              pokenmonFormModel: args.pokenmonFormModel));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MainPokemonRoute.name, path: '/'),
        _i3.RouteConfig(PokenmonDetailRoute.name, path: '/pokenmon-detail-page')
      ];
}

/// generated route for
/// [_i1.MainPokemonPage]
class MainPokemonRoute extends _i3.PageRouteInfo<void> {
  const MainPokemonRoute() : super(MainPokemonRoute.name, path: '/');

  static const String name = 'MainPokemonRoute';
}

/// generated route for
/// [_i2.PokenmonDetailPage]
class PokenmonDetailRoute extends _i3.PageRouteInfo<PokenmonDetailRouteArgs> {
  PokenmonDetailRoute({required _i5.PokenmonFormModel? pokenmonFormModel})
      : super(PokenmonDetailRoute.name,
            path: '/pokenmon-detail-page',
            args:
                PokenmonDetailRouteArgs(pokenmonFormModel: pokenmonFormModel));

  static const String name = 'PokenmonDetailRoute';
}

class PokenmonDetailRouteArgs {
  const PokenmonDetailRouteArgs({required this.pokenmonFormModel});

  final _i5.PokenmonFormModel? pokenmonFormModel;

  @override
  String toString() {
    return 'PokenmonDetailRouteArgs{pokenmonFormModel: $pokenmonFormModel}';
  }
}
