//  This code is coming from "Flutter samples" project
//  https://github.com/flutter/samples/tree/main/navigation_and_routing
//
// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: prefer-correct-callback-field-name

import "package:flutter/widgets.dart";
import "package:path_to_regexp/path_to_regexp.dart";

import "parsed_route.dart";

/// Used by [TemplateRouteParser] to guard access to routes.
typedef RouteGuard<T> = Future<T> Function(T from);

/// Parses the URI path into a [ParsedRoute].
// ignore: prefer-match-file-name, to match original code.
class TemplateRouteParser extends RouteInformationParser<ParsedRoute> {
  TemplateRouteParser({
    /// The list of allowed path templates (['/currency', '/currency/:code'])
    required List<String> allowedPaths,

    /// The initial route.
    String? initialRoute,

    ///  [RouteGuard] used to redirect.
    this.guard,
  }) : initialRoute = ParsedRoute(
         initialRoute ?? allowedPaths.first,
         initialRoute ?? allowedPaths.first,
         const {},
         const {},
       ),
       _pathTemplates = allowedPaths;

  final RouteGuard<ParsedRoute>? guard;
  final ParsedRoute initialRoute;
  final List<String> _pathTemplates;

  @override
  Future<ParsedRoute> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final uri = routeInformation.uri;
    final path = uri.toString();
    final queryParams = uri.queryParameters;
    ParsedRoute parsedRoute = initialRoute;

    for (final pathTemplate in _pathTemplates) {
      final parameters = <String>[];
      final pathRegExp = pathToRegExp(pathTemplate, parameters: parameters);
      if (pathRegExp.hasMatch(path)) {
        final match = pathRegExp.matchAsPrefix(path);
        if (match == null) continue;

        final params = extract(parameters, match);
        parsedRoute = ParsedRoute(path, pathTemplate, params, queryParams);
      }
    }

    // Redirect if a guard is present.
    final guard = this.guard;
    if (guard != null) return guard(parsedRoute);

    return parsedRoute;
  }

  @override
  RouteInformation restoreRouteInformation(ParsedRoute configuration) =>
      RouteInformation(uri: Uri.tryParse(configuration.path));
}
