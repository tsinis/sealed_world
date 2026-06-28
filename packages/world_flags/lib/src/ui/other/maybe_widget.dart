import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";

/// A widget that does a null-check of provided [value] and returns [orElse]
/// (default to [SizedBox.shrink]) if [value] is `null`.
///
/// Otherwise provides a builder with a non-`null` [value].
@immutable
class MaybeWidget<T extends Object> extends StatelessWidget {
  /// Constructor for the [MaybeWidget] class.
  ///
  /// * [value] is the value to check for null.
  /// * `builder` is the builder function to call with a non-null [value].
  /// * [orElse] is the widget to display if [value] is null.
  /// * [buildWhen] optional predicate; if provided and returns `true` the
  ///   builder runs, if it returns `false` [orElse] is used. When omitted only
  ///   the null-check is applied.
  /// * [key] is the key for the widget.
  /// Example:
  ///
  /// ```dart
  /// import "package:flutter/material.dart";
  ///
  /// void main() {
  ///   final Widget widget = MaybeWidget<String>(
  ///     "hello",
  ///     (text) => Text(text),
  ///     buildWhen: (text) => text.trim().isNotEmpty,
  ///     orElse: const SizedBox.shrink(),
  ///   );
  ///   assert(widget.toString().isNotEmpty);
  /// }
  /// ```
  const MaybeWidget(
    this.value,
    this._builder, {
    this.orElse = const SizedBox.shrink(),
    this.buildWhen,
    super.key,
  });

  /// Identifiable constructor for the [MaybeWidget] class.
  ///
  /// Creates a [MaybeWidget] with a key identifier. This ensures that the
  /// widget will always have a different key than the one with a `null` value.
  /// Typically used with animated parents.
  ///
  /// * [value] is the value to check for null.
  /// * `builder` is the builder function to call with a non-null [value].
  /// * [orElse] is the widget to display if [value] is null.
  /// * [buildWhen] optional predicate; if provided and returns `true` the
  ///   builder runs, if it returns `false` [orElse] is used. When omitted only
  ///   the null-check is applied.
  /// * [key] is the key for the widget.
  /// If [key] is not provided, a null-check key will be calculated and used.
  ///
  /// Example:
  ///
  /// ```dart
  /// import "package:flutter/material.dart";
  ///
  /// void main() {
  ///   final Widget widget = AnimatedSwitcher(
  ///     duration: const Duration(milliseconds: 800),
  ///     child: MaybeWidget<String>.identifiable(
  ///       "value",
  ///       (nonNullValue) => Text(nonNullValue.toString()),
  ///     ),
  ///   );
  ///   assert(widget.toString().isNotEmpty);
  /// }
  /// ```
  MaybeWidget.identifiable(
    this.value,
    this._builder, {
    this.orElse = const SizedBox.shrink(),
    this.buildWhen,
    Key? key,
  }) : super(key: key ?? ValueKey<bool>(value != null));

  /// Creates a [MaybeWidget] that uses [Offstage] as the default [orElse]
  /// widget.
  ///
  /// This constructor is useful when you want to completely remove the widget
  /// from the layout when [value] is `null`, taking up zero space.
  ///
  /// * [value] is the value to check for `null`.
  /// * `builder` is the builder function to call with a non-null [value].
  /// * [orElse] defaults to [Offstage] when [value] is `null`.
  /// * [buildWhen] optional predicate; if provided and returns `true` the
  ///   builder runs, if it returns `false` [orElse] (the Offstage widget unless
  ///   overridden) is used. When omitted only the null-check is applied.
  /// * [key] is the key for the widget.
  ///
  /// Example:
  ///
  /// ```dart
  /// import "package:flutter/material.dart";
  ///
  /// void main() {
  ///   final Widget widget = MaybeWidget<String>.offstage(
  ///     "value",
  ///     (value) => Text(value.toString()),
  ///   );
  ///   assert(widget.toString().isNotEmpty);
  /// }
  /// ```
  const MaybeWidget.offstage(
    this.value,
    this._builder, {
    this.orElse = const Offstage(),
    this.buildWhen,
    super.key,
  });

  /// Creates a list of widgets based on a nullable value.
  ///
  /// This method provides two ways to generate widgets:
  /// 1. Using [child] to create a single widget
  /// 2. Using [children] to create multiple widgets
  ///
  /// Returns an empty list if [value] is `null` or if [child] returns `null`.
  /// When using [children], `null` widgets are filtered out from the result.
  ///
  /// * [value] - The nullable value to check
  /// * [child] - Optional callback to create a single widget
  /// * [children] - Optional callback to create multiple widgets
  /// * [buildWhen] - Optional predicate; if provided and returns `false`, an
  ///   empty list is returned even when [value] is non-null. When omitted the
  ///   list is built purely based on nullability.
  ///
  /// Example with single child:
  /// ```dart
  /// import "package:flutter/material.dart";
  ///
  /// class User {
  ///   const User(this.name);
  ///   final String name;
  /// }
  ///
  /// void main() {
  ///   const maybeUser = User("Alice");
  ///   final List<Widget> list = MaybeWidget.list<User>(
  ///     maybeUser,
  ///     child: (user) => Text(user.name),
  ///   );
  ///   assert(list.length == 1);
  /// }
  /// ```
  ///
  /// Example with multiple children:
  /// ```dart
  /// import "package:flutter/material.dart";
  ///
  /// class User {
  ///   const User(this.name, {this.isAdmin = false});
  ///   final String name;
  ///   final bool isAdmin;
  /// }
  ///
  /// void main() {
  ///   const maybeUser = User("Bob", isAdmin: true);
  ///   final List<Widget> list = MaybeWidget.list<User>(
  ///     maybeUser,
  ///     children: (user) => [
  ///       Text(user.name),
  ///       if (user.isAdmin) const SizedBox.shrink(),
  ///     ],
  ///   );
  ///   assert(list.length == 2);
  /// }
  /// ```
  ///
  /// Example using [buildWhen]:
  /// ```dart
  /// import "package:flutter/material.dart";
  ///
  /// class User {
  ///   const User(this.name, {this.isActive = true});
  ///   final String name;
  ///   final bool isActive;
  /// }
  ///
  /// void main() {
  ///   const maybeUser = User("Charlie", isActive: false);
  ///   final List<Widget> list = MaybeWidget.list<User>(
  ///     maybeUser,
  ///     child: (user) => Text(user.name),
  ///     buildWhen: (user) => user.isActive,
  ///   );
  ///   assert(list.isEmpty);
  /// }
  /// ```
  static List<Widget> list<T extends Object>(
    T? value, {
    Widget? Function(T)? child,
    Iterable<Widget?> Function(T)? children,
    bool Function(T value)? buildWhen,
  }) {
    final maybeVal = _passes(value, buildWhen);
    if (maybeVal == null) return const [];
    if (children != null) return List.unmodifiable(children(maybeVal).nonNulls);
    final maybeChild = child?.call(maybeVal);

    return maybeChild == null ? const [] : [maybeChild];
  }

  /// Conditional widget builder that returns `null` when [value] is `null`.
  ///
  /// Unlike the [MaybeWidget] widget which inserts a placeholder, e.g.
  /// `SizedBox.shrink`, when [value] is `null`, this static method simply
  /// returns `null` — useful for nullable `child:` parameters, or inside
  /// [Flex]/[Stack]/etc. children lists with null-aware spread/if expressions.
  ///
  /// Returns `null` when [value] is `null`, when [builder] is `null`, or when
  /// [buildWhen] returns `false`. Otherwise invokes [builder] with the
  /// non-`null` [value].
  ///
  /// ```dart
  /// import "package:flutter/material.dart";
  ///
  /// void main() {
  ///   const String? subtitle = "Sub";
  ///   final Widget column = Column(
  ///     children: [
  ///       const Text("Header"),
  ///       if (MaybeWidget.orNull(subtitle, (s) => Text(s)) case final w?) w,
  ///     ],
  ///   );
  ///   assert(column.toString().isNotEmpty);
  /// }
  /// ```
  ///
  /// Simple example with inference:
  /// ```dart
  /// import "package:flutter/material.dart";
  ///
  /// void main() {
  ///   final lastEdited = DateTime.now();
  ///   final Widget? trailing = MaybeWidget.orNull<Text, DateTime>(
  ///     lastEdited,
  ///     (dt) => Text(dt.toIso8601String()),
  ///   );
  ///   assert(trailing != null);
  /// }
  /// ```
  ///
  /// If you do not need a specialized widget subtype you can omit the generic
  /// arguments entirely and let inference work:
  /// ```dart
  /// import "package:flutter/material.dart";
  ///
  /// void main() {
  ///   const String? tag = "tag";
  ///   final Widget? maybeContainer = MaybeWidget.orNull(tag, Text.new);
  ///   assert(maybeContainer != null);
  /// }
  /// ```
  ///
  /// Returns `null` when [value] is `null` or when [builder] is `null`.
  ///
  /// * [buildWhen] - Optional predicate; if provided and returns `false` the
  ///   method returns `null` even if [value] is non-null. When omitted only the
  ///   null-check on [value] is applied.
  ///
  /// Example:
  /// ```dart
  /// import "package:flutter/material.dart";
  ///
  /// void main() {
  ///   const String? maybeSubtitle = "  ";
  ///   final Widget? subtitle = MaybeWidget.orNull(
  ///     maybeSubtitle,
  ///     (s) => Text(s),
  ///     buildWhen: (s) => s.trim().isNotEmpty,
  ///   );
  ///   assert(subtitle == null);
  /// }
  /// ```
  ///
  /// See also: [MaybeWidget]: the widget counterpart when you need a concrete
  /// fallback placeholder in the tree.
  static W? orNull<W extends Widget, T extends Object>(
    T? value,
    W? Function(T)? builder, {
    bool Function(T value)? buildWhen,
  }) {
    final maybeValue = _passes(value, buildWhen);

    return maybeValue == null ? null : builder?.call(maybeValue);
  }

  /// Shared predicate evaluation so static helpers & instance build follow
  /// identical semantics.
  ///
  /// Applies the predicate and returns the non-null value if it "passes",
  /// otherwise returns `null`.
  static T? _passes<T extends Object>(T? value, bool Function(T)? predicate) {
    if (value == null) return null;
    if (predicate == null || predicate(value)) return value;

    return null;
  }

  /// The builder function to call with a non-null [value].
  // ignore: unsafe_variance, breaking change.
  final Widget Function(T) _builder;

  /// Optional predicate that must return `true` for the builder to be used.
  ///
  /// If omitted, only the null-check on [value] is applied. When provided, the
  /// [value] must be non-null AND the predicate returns `true` for the builder
  /// to run; otherwise [orElse] (or `null` for [orNull]) is used.
  // ignore: unsafe_variance, breaking change.
  final bool Function(T)?
  buildWhen; // ignore: prefer-correct-callback-field-name, SDK like.

  /// The widget to display if [value] is null.
  final Widget orElse;

  /// The value to check for null.
  final T? value;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    properties
      ..add(
        DiagnosticsProperty<T>(
          "value",
          value,
          ifNull: "provided $T value is null,\norElse value is used",
        ),
      )
      ..add(
        DiagnosticsProperty(
          "orElse",
          orElse,
          defaultValue: const SizedBox.shrink(),
          style: DiagnosticsTreeStyle.shallow,
          level: DiagnosticLevel.fine,
        ),
      )
      ..add(
        FlagProperty(
          "hasBuildWhen",
          value: buildWhen != null,
          ifTrue: "custom predicate provided",
          ifFalse: "no predicate (null-check only)",
        ),
      );
  }

  @override
  Widget build(BuildContext context) =>
      MaybeWidget.orNull(value, _builder, buildWhen: buildWhen) ?? orElse;
}
