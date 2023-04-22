import "package:flutter/material.dart";

/// A widget that does a null-check of provided [value] and returns
///  [orElse] (default to [SizedBox.shrink]) if [value] is `null`.
///  Otherwise provides a builder with a non-`null` [value].
final class MaybeWidget<T extends Object> extends StatelessWidget {
  const MaybeWidget(
    this.value,
    this._map, {
    this.orElse = const SizedBox.shrink(),
    super.key,
  });

  final Widget Function(T) _map;
  final Widget orElse;
  final T? value;

  @override
  // ignore: avoid-non-null-assertion, [value] is not getter and class is final.
  Widget build(BuildContext context) => value == null ? orElse : _map(value!);
}
