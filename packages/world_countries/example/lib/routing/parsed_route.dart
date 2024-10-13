//  This code is coming from "Flutter samples" project
//  https://github.com/flutter/samples/tree/main/navigation_and_routing
//
// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore: depend_on_referenced_packages, to match original code.
import "package:collection/collection.dart";
import "package:flutter/foundation.dart";
import "package:quiver/core.dart";

import "parser.dart";

/// A route path that has been parsed by [TemplateRouteParser].
@immutable
class ParsedRoute {
  // ignore: prefer-named-parameters, for example simplicity.
  const ParsedRoute(
    this.path,
    this.pathTemplate,
    this.parameters,
    this.queryParameters,
  );

  /// The current path location without query parameters. (/country).
  final String path;

  /// The path template (/currency/:code).
  final String pathTemplate;

  /// The path parameters ({code: EUR}).
  final Map<String, String> parameters;

  /// The query parameters ({search: abc}).
  final Map<String, String> queryParameters;

  static const _mapEquality = MapEquality<String, String>();

  @override
  bool operator ==(Object other) =>
      other is ParsedRoute &&
      other.pathTemplate == pathTemplate &&
      other.path == path &&
      _mapEquality.equals(parameters, other.parameters) &&
      _mapEquality.equals(queryParameters, other.queryParameters);

  @override
  int get hashCode => hash4(
        path,
        pathTemplate,
        _mapEquality.hash(parameters),
        _mapEquality.hash(queryParameters),
      );

  @override
  String toString() => "<ParsedRoute "
      "template: $pathTemplate "
      "path: $path "
      "parameters: $parameters "
      "query parameters: $queryParameters>";
}
