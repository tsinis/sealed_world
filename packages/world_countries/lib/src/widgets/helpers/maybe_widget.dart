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
  /// * [_onMap] is the builder function to call with a non-null [value].
  /// * [orElse] is the widget to display if [value] is null.
  /// * [key] is the key for the widget.
  /// Example:
  ///
  /// ```dart
  /// MaybeWidget(
  ///  nullableValue,
  ///  (nonNullValue) => Text(nonNullValue.toString()),
  ///  orElse: const Icon(Icons.text_decrease),
  /// ),
  /// ```
  const MaybeWidget(
    this.value,
    this._onMap, {
    this.orElse = const SizedBox.shrink(),
    super.key,
  });

  /// Identifiable constructor for the [MaybeWidget] class.
  ///
  /// Creates a [MaybeWidget] with a key identifier. This ensures that the
  /// widget will always have a different key than the one with a `null` value.
  /// Typically used with animated parents.
  ///
  /// * [value] is the value to check for null.
  /// * [_onMap] is the builder function to call with a non-null [value].
  /// * [orElse] is the widget to display if [value] is null.
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
    this._onMap, {
    this.orElse = const SizedBox.shrink(),
    Key? key,
  }) : super(key: key ?? ValueKey<bool>(value != null));

  /// Creates a [MaybeWidget] that uses [Offstage] as the default [orElse]
  /// widget.
  ///
  /// This constructor is useful when you want to preserve the layout space even
  /// when the [value] is `null`, but make the widget invisible.
  ///
  /// * [value] is the value to check for `null`.
  /// * [_onMap] is the builder function to call with a non-null [value].
  /// * [orElse] defaults to [Offstage] when [value] is `null`.
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
    this._onMap, {
    this.orElse = const Offstage(),
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
  static List<Widget> list<T extends Object>(
    T? value, {
    Widget? Function(T)? child,
    Iterable<Widget?> Function(T)? children,
  }) {
    if (value == null) return const [];
    if (children != null) return List.unmodifiable(children(value).nonNulls);
    final maybeChild = child?.call(value);

    return maybeChild == null ? const [] : [maybeChild];
  }

  /// The builder function to call with a non-null [value].
  final Widget Function(T) _onMap;

  /// The widget to display if [value] is null.
  final Widget orElse;

  /// The value to check for null.
  final T? value;

  @override
  Widget build(BuildContext context) {
    final valueToMap = value;

    return valueToMap == null ? orElse : _onMap(valueToMap);
  }
}
