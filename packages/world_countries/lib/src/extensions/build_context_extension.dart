import "package:flutter/material.dart";

/// A set of useful extensions for `BuildContext`.
extension BuildContextExtension on BuildContext {
  /// Returns the `MaterialLocalizations` instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// String ok = context.materialL10n.okButtonLabel;
  /// ```
  MaterialLocalizations get materialL10n => MaterialLocalizations.of(this);

  /// Returns `true` if the current `BuildContext` has a `MaterialLocalizations`
  /// instance associated with it.
  bool get hasMaterialL10n =>
      Localizations.of<MaterialLocalizations>(this, MaterialLocalizations) !=
      null;

  /// Returns the nearest `NavigatorState` instance for the current context.
  NavigatorState get navigator => Navigator.of(this);

  /// Pops the current route off the navigation stack and returns to the
  /// previous route with an optional result.
  ///
  /// Example usage:
  /// ```dart
  /// onTap: context.pop,
  /// ```
  void pop<T extends Object>([T? result]) => navigator.pop<T>(result);

  /// Pushes a new `Route` onto the navigation stack and returns a [Future] that
  /// completes when the new route is popped.
  ///
  /// Example usage:
  /// ```dart
  /// context.push(MyRoute());
  /// ```
  Future<T?> push<T extends Object>(Route<T> route) => navigator.push(route);

  /// Pops the current route off the navigation stack and returns to the
  /// previous route with an optional result, but only if there is a previous
  /// route.
  ///
  /// Example usage:
  /// ```dart
  /// context.maybePop();
  /// ```
  Future<bool> maybePop<T extends Object>([T? result]) =>
      navigator.maybePop<T>(result);

  /// Returns the nearest `FocusScopeNode` instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// context.focus.requestFocus();
  /// ```
  FocusScopeNode get focus => FocusScope.of(this);

  /// Returns the nearest `MediaQueryData` instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// Size size = context.media.size;
  /// ```
  MediaQueryData get media => MediaQuery.of(this);

  /// Returns the padding from the nearest `MediaQueryData` instance for the
  /// current context.
  ///
  /// Example usage:
  /// ```dart
  /// EdgeInsets padding = context.padding;
  /// ```
  EdgeInsets get padding => MediaQuery.paddingOf(this);

  /// Returns the `ThemeData` instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// Color primaryColor = context.theme.primaryColor;
  /// ```
  ThemeData get theme => Theme.of(this);

  /// Returns the nearest `ScaffoldState` instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// context.scaffold.showSnackBar(SnackBar(content: Text('Hello')));
  /// ```
  ScaffoldState get scaffold => Scaffold.of(this);

  /// Returns the nearest `ScaffoldMessengerState` instance for the current
  /// context.
  ///
  /// Example usage:
  /// ```dart
  /// ScaffoldMessengerState messenger = context.messenger;
  /// ```
  ScaffoldMessengerState get messenger => ScaffoldMessenger.of(this);

  /// Shows a `SnackBar` at the bottom of the screen.
  ///
  /// Example usage:
  /// ```dart
  /// context.showSnackBar(SnackBar(content: Text('Hello')));
  /// ```
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    SnackBar snackBar,
  ) =>
      messenger.showSnackBar(snackBar);
}
