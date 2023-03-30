// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../main.dart' as _i1;
import '../presentation/screens/doctorpage.dart' as _i3;
import '../presentation/screens/login.dart' as _i2;
import '../presentation/screens/pharmapgae.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MyHomePage(),
      );
    },
    LoginScreen.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DoctorRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.DoctorPage(),
      );
    },
    PharmaRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PharmaPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          MyHomeRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          LoginScreen.name,
          path: '/login-screen',
        ),
        _i5.RouteConfig(
          DoctorRoute.name,
          path: '/doctor-page',
        ),
        _i5.RouteConfig(
          PharmaRoute.name,
          path: '/pharma-page',
        ),
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i5.PageRouteInfo<void> {
  const MyHomeRoute()
      : super(
          MyHomeRoute.name,
          path: '/',
        );

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i5.PageRouteInfo<void> {
  const LoginScreen()
      : super(
          LoginScreen.name,
          path: '/login-screen',
        );

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.DoctorPage]
class DoctorRoute extends _i5.PageRouteInfo<void> {
  const DoctorRoute()
      : super(
          DoctorRoute.name,
          path: '/doctor-page',
        );

  static const String name = 'DoctorRoute';
}

/// generated route for
/// [_i4.PharmaPage]
class PharmaRoute extends _i5.PageRouteInfo<void> {
  const PharmaRoute()
      : super(
          PharmaRoute.name,
          path: '/pharma-page',
        );

  static const String name = 'PharmaRoute';
}
