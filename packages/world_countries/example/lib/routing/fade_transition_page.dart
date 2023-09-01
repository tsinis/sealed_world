//  This code is coming from "Flutter samples" project
//  https://github.com/flutter/samples/tree/main/navigation_and_routing
//
// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import "package:flutter/material.dart";

class FadeTransitionPage<T> extends Page<T> {
  const FadeTransitionPage({
    required this.child,
    this.duration = const Duration(milliseconds: 300),
    super.key,
  });

  final Widget child;
  final Duration duration;

  @override
  Route<T> createRoute(BuildContext context) =>
      PageBasedFadeTransitionRoute<T>(this);
}

class PageBasedFadeTransitionRoute<T> extends PageRoute<T> {
  PageBasedFadeTransitionRoute(this._page) : super(settings: _page);

  final FadeTransitionPage<T> _page;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  Duration get transitionDuration => _page.duration;

  @override
  bool get maintainState => true;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    final curveTween = CurveTween(curve: Curves.easeIn);

    return FadeTransition(
      opacity: animation.drive(curveTween),
      child: (settings as FadeTransitionPage).child,
    );
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) =>
      child;
}
