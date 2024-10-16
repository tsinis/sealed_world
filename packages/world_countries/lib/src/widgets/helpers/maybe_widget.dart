import "package:flutter/widgets.dart";

/// A widget that does a null-check of provided [value] and returns [orElse]
/// (default to `SizedBox.shrink`) if [value] is `null`.
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
