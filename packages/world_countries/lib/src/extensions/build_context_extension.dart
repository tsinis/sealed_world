import "package:flutter/material.dart";
import "package:meta/meta.dart";

/// A set of useful extensions for [BuildContext].
extension BuildContextExtension on BuildContext {
  /// Returns the [MaterialLocalizations] instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// String ok = context.materialL10n.okButtonLabel;
  /// ```
  @useResult
  MaterialLocalizations get materialL10n => MaterialLocalizations.of(this);

  /// Returns `true` if the current [BuildContext] has a [MaterialLocalizations]
  /// instance associated with it.
  @useResult
  bool get hasMaterialL10n =>
      Localizations.of<MaterialLocalizations?>(this, MaterialLocalizations) !=
      null;

  /// Returns the nearest [FocusScopeNode] instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// context.focus.requestFocus();
  /// ```
  @useResult
  FocusScopeNode get focus => FocusScope.of(this);

  /// Returns the nearest [MediaQueryData] instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// Size size = context.media.size;
  /// ```
  @useResult
  MediaQueryData get media => MediaQuery.of(this);

  /// Returns the padding from the nearest [MediaQueryData] instance for the
  /// current context.
  ///
  /// Example usage:
  /// ```dart
  /// EdgeInsets padding = context.padding;
  /// ```
  @useResult
  EdgeInsets get padding => MediaQuery.paddingOf(this);

  /// Returns the [ThemeData] instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// Color primaryColor = context.theme.primaryColor;
  /// ```
  @useResult
  ThemeData get theme => Theme.of(this);

  /// Returns the nearest [ScaffoldState] instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// context.scaffold.showSnackBar(SnackBar(content: Text('Hello')));
  /// ```
  ScaffoldState get scaffold => Scaffold.of(this);

  /// Returns the nearest [ScaffoldState] instance for the current context or
  /// `null` if no [Scaffold] ancestor is found.
  ///
  /// This is the nullable variant of [scaffold] that uses [Scaffold.maybeOf]
  /// instead of [Scaffold.of]. It allows you to safely attempt scaffold
  /// operations in widget trees where a [Scaffold] might not be present (for
  /// example inside isolated subtrees or tests) without throwing.
  ///
  /// Example usage:
  /// ```dart
  /// context.maybeScaffold?.showSnackBar(const SnackBar(content: Text('Hi!')));
  /// ```
  @useResult
  ScaffoldState? get maybeScaffold => Scaffold.maybeOf(this);

  /// Returns the nearest [ScaffoldMessengerState] instance for the current
  /// context.
  ///
  /// Example usage:
  /// ```dart
  /// ScaffoldMessengerState messenger = context.messenger;
  /// ```
  ScaffoldMessengerState get messenger => ScaffoldMessenger.of(this);

  /// Returns the nearest [ScaffoldMessengerState] for the current context or
  /// `null` if no [ScaffoldMessenger] ancestor is found.
  ///
  /// This is the nullable variant of [messenger] that uses
  /// [ScaffoldMessenger.maybeOf]. Prefer this when displaying a [SnackBar] from
  /// a context where you are not certain a [ScaffoldMessenger] exists.
  ///
  /// Example usage:
  /// ```dart
  /// context.maybeMessenger?.showSnackBar(
  ///   const SnackBar(content: Text('Optional messenger')),
  /// );
  /// ```
  @useResult
  ScaffoldMessengerState? get maybeMessenger => ScaffoldMessenger.maybeOf(this);

  /// Shows a [SnackBar] at the bottom of the screen.
  ///
  /// Example usage:
  /// ```dart
  /// context.showSnackBar(SnackBar(content: Text('Hello')));
  /// ```
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    SnackBar snackBar,
  ) => messenger.showSnackBar(snackBar);
}
