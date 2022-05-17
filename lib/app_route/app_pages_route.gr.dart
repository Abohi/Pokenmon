// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../models/pokenmon_form_model/pokenmon_form_model.dart' as _i6;
import '../pages/add_pokenmon_page.dart' as _i3;
import '../pages/main_pokenmon_page.dart' as _i1;
import '../pages/poken_detail_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainPokemonRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.MainPokemonPage());
    },
    PokenmonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PokenmonDetailRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.PokenmonDetailPage(
              pokenmonFormModel: args.pokenmonFormModel));
    },
    AddPokemonRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.AddPokemonPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(MainPokemonRoute.name, path: '/'),
        _i4.RouteConfig(PokenmonDetailRoute.name,
            path: '/pokenmon-detail-page'),
        _i4.RouteConfig(AddPokemonRoute.name, path: '/add-pokemon-page')
      ];
}

/// generated route for
/// [_i1.MainPokemonPage]
class MainPokemonRoute extends _i4.PageRouteInfo<void> {
  const MainPokemonRoute() : super(MainPokemonRoute.name, path: '/');

  static const String name = 'MainPokemonRoute';
}

/// generated route for
/// [_i2.PokenmonDetailPage]
class PokenmonDetailRoute extends _i4.PageRouteInfo<PokenmonDetailRouteArgs> {
  PokenmonDetailRoute({required _i6.PokenmonFormModel? pokenmonFormModel})
      : super(PokenmonDetailRoute.name,
            path: '/pokenmon-detail-page',
            args:
                PokenmonDetailRouteArgs(pokenmonFormModel: pokenmonFormModel));

  static const String name = 'PokenmonDetailRoute';
}

class PokenmonDetailRouteArgs {
  const PokenmonDetailRouteArgs({required this.pokenmonFormModel});

  final _i6.PokenmonFormModel? pokenmonFormModel;

  @override
  String toString() {
    return 'PokenmonDetailRouteArgs{pokenmonFormModel: $pokenmonFormModel}';
  }
}

/// generated route for
/// [_i3.AddPokemonPage]
class AddPokemonRoute extends _i4.PageRouteInfo<void> {
  const AddPokemonRoute()
      : super(AddPokemonRoute.name, path: '/add-pokemon-page');

  static const String name = 'AddPokemonRoute';
}
