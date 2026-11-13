import "package:flutter/widgets.dart";

/// Calls [onActivate] when a focused control is activated with a keyboard
/// (i.e. Enter or Space) by an intent of type [T], like a tap does.
class ActivateCallbackAction<T extends Intent> extends Action<T> {
  new({required this.onActivate});

  final VoidCallback onActivate;

  @override
  void invoke(T intent) => onActivate();
}
