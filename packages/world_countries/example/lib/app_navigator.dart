import "dart:async" show unawaited;

import "package:flutter/material.dart";

import "helpers/extensions/parsed_route_settings_extension.dart";
import "helpers/utils/route_parse_utils.dart";
import "model/constants.dart";
import "routing/fade_transition_page.dart";
import "routing/route_state.dart";
import "theme/flag_theme_scope.dart";
import "ui/main/main_page.dart";
import "ui/settings/settings_page.dart";

class AppNavigator extends StatelessWidget {
  const AppNavigator(
    this._navigatorKey, {
    this.utils = const RouteParseUtils(),
    super.key,
  });

  final GlobalKey<NavigatorState> _navigatorKey;
  final RouteParseUtils utils;

  @override
  Widget build(BuildContext context) {
    final routeState = RouteStateScope.of(context);
    final controller = FlagThemeScope.maybeOf(context);
    final parsedPage = utils.parseRoute(routeState.route);

    return Navigator(
      key: _navigatorKey,
      onDidRemovePage: (page) => page,
      pages: <Page<void>>[
        FadeTransitionPage(
          key: ValueKey(parsedPage.value),
          child: MainPage(parsedPage, go: routeState.go),
        ),
        if (parsedPage.isSettings && controller != null)
          MaterialPage(
            name: Constants.settings,
            key: const ValueKey(Constants.settings),
            child: SettingsPage(controller, parsedPage.country),
            onPopInvoked: (didPop, _) => didPop
                ? unawaited(routeState.go(routeState.route.pathWithoutSettings))
                : null,
          ),
      ],
    );
  }
}
