// ignore_for_file: avoid-late-keyword

import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:world_countries/world_countries.dart";

import "app_navigator.dart";
import "model/world_data.dart";
import "routing/delegate.dart";
import "routing/parser.dart";
import "routing/route_state.dart";
import "theme/theme_manager.dart";
import "theme/theme_provider.dart";

void main() => runApp(const ThemeManager(child: Main()));

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  /// Also [CurrencyTileThemeData], [LanguageTileThemeData],
  /// [CountryTileThemeData].
  static const extensions = <ThemeExtension>[
    PickersThemeData(primary: true), // Applies to all types of pickers.
    FlagThemeData(
      /// Specify the flag decoration in the default country/phone-code picker.
      decoration: BoxDecoration(border: Border.fromBorderSide(BorderSide())),
    ),
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
      theme: ThemeProvider.of(context)?.theme.copyWith(extensions: extensions),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        TypedLocaleDelegate(), // <- Add for pickers L10N and improved search.
      ],
      supportedLocales: [
        const Locale.fromSubtags(languageCode: "bs", scriptCode: "Cyrl"),
        const Locale.fromSubtags(languageCode: "bs", scriptCode: "Latn"),
        const TypedLocale(LangPor(), country: CountryBra()), // Typed one.
        for (final locale in kMaterialSupportedLanguages) Locale(locale),
      ],
      debugShowCheckedModeBanner: false,
    ),
  );
}
