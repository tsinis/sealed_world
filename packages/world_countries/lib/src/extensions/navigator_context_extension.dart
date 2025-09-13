import "package:flutter/widgets.dart";
import "package:meta/meta.dart" show useResult;

/// A set of useful extensions related to [Navigator] for [BuildContext].
extension NavigatorContextExtension on BuildContext {
  /// Returns the nearest [NavigatorState] instance for the current context.
  @useResult
  NavigatorState get navigator => Navigator.of(this);

  /// Pops the current route off the navigation stack and returns to the
  /// previous route with an optional result.
  ///
  /// Example usage:
  /// ```dart
  /// onTap: context.pop,
  /// ```
  @optionalTypeArgs
  void pop<T extends Object>([T? result]) => navigator.pop<T>(result);

  /// Pushes a new [Route] onto the navigation stack and returns a [Future] that
  /// completes when the new route is popped.
  ///
  /// Example usage:
  /// ```dart
  /// context.push(MyRoute());
  /// ```
  @optionalTypeArgs
  Future<T?> push<T extends Object>(Route<T> route) => navigator.push(route);

  /// Pops the current route off the navigation stack and returns to the
  /// previous route with an optional result, but only if there is a previous
  /// route.
  ///
  /// Example usage:
  /// ```dart
  /// context.maybePop();
  /// ```
  @optionalTypeArgs
  Future<bool> maybePop<T extends Object>([T? result]) =>
      navigator.maybePop<T>(result);
}
