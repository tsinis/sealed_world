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
  /// Also [CurrencyTileThemeData], [LanguageTileThemeData]...
  static const pickerThemes = <ThemeExtension>[
    PickersThemeData(primary: true), // Applies to all types of pickers.
    CountryTileThemeData(emojiFamily: EmojiFamily.twemoji),
  ];
  final _navigatorKey = GlobalKey<NavigatorState>();
  final _routeParser = TemplateRouteParser(allowedPaths: WorldData.paths);
  late final _routeState = RouteState(_routeParser);
  late final _routerDelegate = SimpleRouterDelegate(
    routeState: _routeState,
    builder: (_) => AppNavigator(_navigatorKey),
    navigatorKey: _navigatorKey,
  );

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
          theme: ThemeData(
            extensions: pickerThemes,
            useMaterial3: true,
            colorScheme: lightColorScheme,
          ),
          darkTheme: ThemeData(
            extensions: pickerThemes,
            useMaterial3: true,
            colorScheme: darkColorScheme,
          ),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            TypedLocaleDelegate(), // <- Add for automatic pickers translations.
          ],
          supportedLocales: [
            const Locale("pt", "PT"),
            const Locale("pt", "BR"), // Classic, string only based locale, or:
            const TypedLocale(LangBos(), script: ScriptLatn()), // Loose typed.
            const IsoLocale(LangBos(), script: ScriptCyrl()), // Strict typed.
            for (final locale in kMaterialSupportedLanguages) Locale(locale),
          ],
        ),
      );
}
