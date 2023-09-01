import "package:flutter/material.dart";

import "app_navigator.dart";
import "model/world_data.dart";
import "routing/delegate.dart";
import "routing/parser.dart";
import "routing/route_state.dart";
import "theme/color_schemes.g.dart";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  late final SimpleRouterDelegate _routerDelegate;
  late final TemplateRouteParser _routeParser;
  late final RouteState _routeState;

  @override
  void initState() {
    super.initState();
    _routeParser = TemplateRouteParser(allowedPaths: WorldData.paths);
    _routeState = RouteState(_routeParser);
    _routerDelegate = SimpleRouterDelegate(
      routeState: _routeState,
      builder: (_) => AppNavigator(_navigatorKey),
      navigatorKey: _navigatorKey,
    );
  }

  @override
  void dispose() {
    _routerDelegate.dispose();
    _routeState.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => RouteStateScope(
        notifier: _routeState,
        child: MaterialApp.router(
          routeInformationParser: _routeParser,
          routerDelegate: _routerDelegate,
          theme: ThemeData(colorScheme: lightColorScheme),
        ),
      );
}
