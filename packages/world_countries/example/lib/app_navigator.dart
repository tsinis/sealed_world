import "package:flutter/material.dart";

import "helpers/utils/route_parse_utils.dart";
import "pages/main_page.dart";
import "routing/route_state.dart";

class AppNavigator extends StatelessWidget {
  const AppNavigator(
    this.navigatorKey, {
    this.utils = const RouteParseUtils(),
    super.key,
  });

  final GlobalKey<NavigatorState> navigatorKey;
  final RouteParseUtils utils;

  @override
  Widget build(BuildContext context) {
    final routeState = RouteStateScope.of(context);
    final parsed = utils.parseRoute(routeState.route);

    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          key: ValueKey(parsed.value),
          child: MainPage(parsed, navigate: routeState.go),
        ),
      ],
      onPopPage: (route, result) => route.didPop(result),
    );
  }
}
