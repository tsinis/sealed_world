import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:url_strategy/url_strategy.dart";
import "package:world_countries/world_countries.dart";

import "app_navigator.dart";
import "model/world_data.dart";
import "routing/delegate.dart";
import "routing/parser.dart";
import "routing/route_state.dart";
import "theme/color_schemes.g.dart";

void main() {
  setPathUrlStrategy();
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
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
          theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,

            /// Allows to use user's [Locale] as default translation in pickers.
            TypedLocaleDelegate(), // <----.
          ],
          supportedLocales: [
            for (final locale in kMaterialSupportedLanguages) Locale(locale),
            const Locale("pt", "PT"),
            const Locale("pt", "BR"),
          ],
        ),
      );
}
