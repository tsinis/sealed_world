import "package:flutter/material.dart";
import "package:meta/meta.dart" show useResult;

/// A set of useful extensions for [BuildContext].
extension BuildContextExtension on BuildContext {
  /// Returns the [MaterialLocalizations] instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// void example(BuildContext context) {
  ///   final String ok = context.materialL10n.okButtonLabel;
  ///   assert(ok.isNotEmpty);
  /// }
  ///
  /// void main() {}
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
  /// void example(BuildContext context) {
  ///   context.focus.requestFocus();
  /// }
  ///
  /// void main() {}
  /// ```
  FocusScopeNode get focus => FocusScope.of(this);

  /// Returns the nearest [MediaQueryData] instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// void example(BuildContext context) {
  ///   final Size size = context.media.size;
  ///   assert(size.width >= 0);
  /// }
  ///
  /// void main() {}
  /// ```
  @useResult
  MediaQueryData get media => MediaQuery.of(this);

  /// Returns the padding from the nearest [MediaQueryData] instance for the
  /// current context.
  ///
  /// Example usage:
  /// ```dart
  /// void example(BuildContext context) {
  ///   final EdgeInsets padding = context.padding;
  ///   assert(padding.top >= 0);
  /// }
  ///
  /// void main() {}
  /// ```
  @useResult
  EdgeInsets get padding => MediaQuery.paddingOf(this);

  /// Returns the [ThemeData] instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// void example(BuildContext context) {
  ///   final Color primaryColor = context.theme.primaryColor;
  ///   assert(primaryColor.hashCode != 0);
  /// }
  ///
  /// void main() {}
  /// ```
  @useResult
  ThemeData get theme => Theme.of(this);

  /// Returns the nearest [ScaffoldState] instance for the current context.
  ///
  /// Example usage:
  /// ```dart
  /// void example(BuildContext context) {
  ///   final hasDrawer = context.scaffold.hasDrawer;
  ///   assert(hasDrawer == true || hasDrawer == false);
  /// }
  ///
  /// void main() {}
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
  /// void example(BuildContext context) {
  ///   final hasDrawer = context.maybeScaffold?.hasDrawer;
  ///   assert(hasDrawer == null || hasDrawer == true || hasDrawer == false);
  /// }
  ///
  /// void main() {}
  /// ```
  ScaffoldState? get maybeScaffold => Scaffold.maybeOf(this);

  /// Returns the nearest [ScaffoldMessengerState] instance for the current
  /// context.
  ///
  /// Example usage:
  /// ```dart
  /// void example(BuildContext context) {
  ///   final ScaffoldMessengerState messenger = context.messenger;
  ///   assert(messenger.toString().isNotEmpty);
  /// }
  ///
  /// void main() {}
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
  /// void example(BuildContext context) {
  ///   context.maybeMessenger?.showSnackBar(
  ///     const SnackBar(content: Text("Optional messenger")),
  ///   );
  /// }
  ///
  /// void main() {}
  /// ```
  ScaffoldMessengerState? get maybeMessenger => ScaffoldMessenger.maybeOf(this);

  /// Whether the current text direction is right-to-left.
  ///
  /// Example usage:
  /// ```dart
  /// void example(BuildContext context) {
  ///   final bool rtl = context.isRtl;
  ///   assert(rtl == true || rtl == false);
  /// }
  ///
  /// void main() {}
  /// ```
  @useResult
  bool get isRtl => Directionality.of(this) == TextDirection.rtl;

  /// Shows a [SnackBar] at the bottom of the screen.
  ///
  /// Example usage:
  /// ```dart
  /// void example(BuildContext context) {
  ///   context.showSnackBar(
  ///     const SnackBar(content: Text("Hello")),
  ///   );
  /// }
  ///
  /// void main() {}
  /// ```
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    SnackBar snackBar,
  ) => messenger.showSnackBar(snackBar);
}
