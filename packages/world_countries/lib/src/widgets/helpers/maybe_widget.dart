import "package:flutter/material.dart";

/// A widget that does a null-check of provided [value] and returns [orElse]
/// (default to `SizedBox.shrink`) if [value] is `null`.
///
/// Otherwise provides a builder with a non-`null` [value].
@immutable
class MaybeWidget<T extends Object> extends StatelessWidget {
  /// Constructor for the [MaybeWidget] class.
  ///
  /// * [value] is the value to check for null.
  /// * [_map] is the builder function to call with a non-null [value].
  /// * [orElse] is the widget to display if [value] is null.
  const MaybeWidget(
    this.value,
    this._map, {
    this.orElse = const SizedBox.shrink(),
    Key? key,
  }) : super(key: key);

  /// The builder function to call with a non-null [value].
  final Widget Function(T) _map;

  /// The widget to display if [value] is null.
  final Widget orElse;

  /// The value to check for null.
  final T? value;

  @override
  // ignore: avoid-non-null-assertion, value is not getter, class is immutable.
  Widget build(BuildContext context) => value == null ? orElse : _map(value!);
}
