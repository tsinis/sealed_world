import "package:flutter/widgets.dart";

/// Calls [onActivate] when a focused control is activated with a keyboard
/// (i.e. Enter or Space), like a tap does.
class ActivateCallbackAction extends Action<ActivateIntent> {
  new({required this.onActivate});

  final VoidCallback onActivate;

  @override
  void invoke(ActivateIntent intent) => onActivate();
}
