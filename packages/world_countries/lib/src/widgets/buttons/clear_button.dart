import "package:flutter/material.dart";

import "../../constants/ui_constants.dart";

/// A widget that displays a clear button for a text editing controller.
class ClearButton extends StatelessWidget {
  /// Constructor for the [ClearButton] class.
  ///
  /// * TextEditingController is the text editing controller to listen to.
  /// * [icon] is the icon to display in the button.
  /// * `key` is the optional key to use for the widget.
  const ClearButton(this._controller, {this.icon = defaultIcon, super.key});

  /// The default icon to display in the button.
  static const defaultIcon = Icon(Icons.clear);

  /// The text editing controller to listen to.
  final TextEditingController _controller;

  /// The icon to display in the button.
  final Widget icon;

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
    valueListenable: _controller,
    builder:
        (_, controller, _) => AnimatedCrossFade(
          firstChild: IconButton(onPressed: _controller.clear, icon: icon),
          secondChild: UiConstants.placeholder,
          firstCurve: UiConstants.switchOutCurve,
          secondCurve: UiConstants.switchInCurve,
          sizeCurve: UiConstants.switchOutCurve,
          crossFadeState:
              controller.text.isEmpty
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
          duration: UiConstants.duration,
        ),
  );
}
