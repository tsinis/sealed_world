import "package:flutter/material.dart";

import "../../helpers/ui_constants.dart";

class ClearButton extends StatelessWidget {
  const ClearButton(this._controller, {super.key});

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) => ValueListenableBuilder(
        valueListenable: _controller,
        builder: (_, controller, __) => AnimatedCrossFade(
          firstChild: IconButton(
            onPressed: _controller.clear,
            icon: const Icon(Icons.clear),
          ),
          secondChild: UiConstants.placeholder,
          firstCurve: UiConstants.switchOutCurve,
          secondCurve: UiConstants.switchInCurve,
          sizeCurve: UiConstants.switchOutCurve,
          crossFadeState: controller.text.isEmpty
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: UiConstants.duration,
        ),
      );
}
