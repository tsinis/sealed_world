import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart"
    show BuildContext, Flex, Offstage, SizedBox, Stack, StatelessWidget, Widget;

/// A widget that does a null-check of provided [value] and returns [orElse]
/// (default to [SizedBox.shrink]) if [value] is `null`.
///
/// Otherwise provides a builder with a non-`null` [value].
@immutable
class MaybeWidget<T extends Object> extends StatelessWidget {
  /// Constructor for the [MaybeWidget] class.
  ///
  /// * [value] is the value to check for null.
  /// * [_builder] is the builder function to call with a non-null [value].
  /// * [orElse] is the widget to display if [value] is null.
  /// * [buildWhen] optional predicate; if provided and returns `true` the
  ///   builder runs, if it returns `false` [orElse] is used. When omitted only
  ///   the null-check is applied.
  /// * [key] is the key for the widget.
  /// Example:
  ///
  /// ```dart
  /// MaybeWidget(
  ///  nullableText,
  ///  (text) => Text(text),
  ///  buildWhen: (text) => text.trim().isNotEmpty, // Only for non-empty text.
  ///  orElse: const Icon(Icons.text_decrease),
  /// ),
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
  /// * [_builder] is the builder function to call with a non-null [value].
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
  /// AnimatedSwitcher(
  ///  duration: const Duration(milliseconds: 800),
  ///  child: MaybeWidget.identifiable(
  ///  nullableValue,
  ///  (nonNullValue) => Text(nonNullValue.toString()),
  ///   ),
  /// ),
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
  /// This constructor is useful when you want to preserve the layout space even
  /// when the [value] is `null`, but make the widget invisible.
  ///
  /// * [value] is the value to check for `null`.
  /// * [_builder] is the builder function to call with a non-null [value].
  /// * [orElse] defaults to [Offstage] when [value] is `null`.
  /// * [buildWhen] optional predicate; if provided and returns `true` the
  ///   builder runs, if it returns `false` [orElse] (the Offstage widget unless
  ///   overridden) is used. When omitted only the null-check is applied.
  /// * [key] is the key for the widget.
  ///
  /// Example:
  ///
  /// ```dart
  /// MaybeWidget.offstage(
  ///   nullableValue,
  ///   (value) => Text(value.toString()),
  /// )
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
  /// MaybeWidget.list(
  ///   maybeUser,
  ///   child: (user) => Text(user.name),
  /// )
  /// ```
  ///
  /// Example with multiple children:
  /// ```dart
  /// MaybeWidget.list(
  ///   maybeUser,
  ///   children: (user) => [
  ///     Text(user.name),
  ///     if (user.isAdmin) Icon(Icons.star),
  ///   ],
  /// )
  /// ```
  ///
  /// Example using [buildWhen]:
  /// ```dart
  /// // Only include widgets when the user is active.
  /// MaybeWidget.list(
  ///   maybeUser,
  ///   child: (user) => Text(user.name),
  ///   buildWhen: (user) => user.isActive,
  /// );
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
  /// This lightweight utility mirrors the ergonomics of the main [MaybeWidget]
  /// widget for the specific scenario where you only need a nullable widget
  /// result (e.g. for nullable `child:` inputs, or inside a [Flex]/[Stack]/etc.
  /// children list, or in a collection literal with spread / if
  /// expressions) instead of inserting an always-present placeholder like
  /// [SizedBox.shrink].
  ///
  /// When the provided [value] is:
  /// * `null`  - the method returns `null` (allowing you to naturally skip the
  ///   widget in list literals without extra `if` checks).
  /// * non-`null` - the optional [builder] is invoked and its result returned.
  ///   If [builder] itself is omitted or returns `null`, the overall result is
  ///   also `null`.
  ///
  /// Generics:
  /// * [T] represents the (non-null) value type expected by [builder].
  /// * [W] represents the widget subtype you expect the [builder] to return. By
  ///   default the compiler will usually infer `W` for you (e.g. `Widget`,
  ///   `Text`, `Icon`, etc.).
  ///
  /// Use cases include concise, allocation-free conditional widget inclusion:
  ///
  /// ```dart
  /// Column(
  ///   children: [
  ///     const Text('Header'),
  ///     ?MaybeWidget.orNull(subtitle, Text.new), // Add a subtitle if exists.
  ///   ],
  /// );
  /// ```
  ///
  /// Simple example with inference:
  /// ```dart
  /// final trailing = MaybeWidget.orNull<Text, DateTime>(
  ///   lastEdited,
  ///   (dt) => Text(timeAgo(dt)),
  /// );
  /// ```
  ///
  /// If you do not need a specialized widget subtype you can omit the generic
  /// arguments entirely and let inference work:
  /// ```dart
  /// final maybeChip = MaybeWidget.orNull(tag, (t) => Chip(label: Text(t)));
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
  /// final subtitle = MaybeWidget.orNull<Text, String>(
  ///   maybeSubtitle,
  ///   Text.new,
  ///   buildWhen: (s) => s.trim().isNotEmpty,
  /// );
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
  final Widget Function(T) _builder;

  /// Optional predicate that must return `true` for the builder to be used.
  ///
  /// If omitted, only the null-check on [value] is applied. When provided, the
  /// [value] must be non-null AND the predicate returns `true` for the builder
  /// to run; otherwise [orElse] (or `null` for [orNull]) is used.
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
