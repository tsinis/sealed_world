//  This code is coming from "Flutter samples" project
//  https://github.com/flutter/samples/tree/main/navigation_and_routing
//
// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import "dart:async";

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";

import "parsed_route.dart";
import "route_state.dart";

// ignore: prefer-match-file-name, to match original code.
class SimpleRouterDelegate extends RouterDelegate<ParsedRoute>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<ParsedRoute> {
  SimpleRouterDelegate({
    required this.routeState,
    required this.builder,
    required this.navigatorKey,
    // ignore: avoid-non-empty-constructor-bodies, it's original Google code.
  }) {
    routeState.addListener(notifyListeners);
  }

  final RouteState routeState;
  final WidgetBuilder builder;

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) => builder(context);

  @override
  Future<void> setNewRoutePath(ParsedRoute configuration) {
    routeState.route = configuration;

    return SynchronousFuture(null);
  }

  @override
  ParsedRoute get currentConfiguration => routeState.route;

  @override
  void dispose() {
    routeState
      ..removeListener(notifyListeners)
      ..dispose();
    super.dispose();
  }
}
