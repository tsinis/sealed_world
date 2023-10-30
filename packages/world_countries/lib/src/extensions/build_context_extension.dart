import "package:flutter/material.dart";

import "../helpers/typed_locale_delegate.dart";
import "../models/locale/typed_locale.dart";

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
      Localizations.of<MaterialLocalizations?>(this, MaterialLocalizations) !=
      null;

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

  /// Returns the `TypedLocale` instance for the current context, or `null` if
  /// the current context does not have a `TypedLocale` (for example, because
  /// `TypedLocaleDelegate` is not provided in the `MaterialApp`'s
  /// `localizationsDelegates` list or locale was not detected).
  TypedLocale? get maybeLocale => TypedLocaleDelegate.maybeOf(this);
}
