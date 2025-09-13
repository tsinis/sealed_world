import "package:flutter/material.dart";
import "package:world_countries/helpers.dart";

import "../tabs/tabs_data_controller.dart";

class FloatingButton extends StatelessWidget {
  const FloatingButton(this._controller, {required this.onPressed, super.key});

  final void Function({bool isLong}) onPressed;
  final TabsDataController _controller;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onLongPress: () => onPressed(isLong: true),
    // ignore: prefer-action-button-tooltip, we need long-press here.
    child: FloatingActionButton(
      heroTag: "FAB",
      onPressed: () => onPressed(isLong: false),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, _) => AnimatedSwitcher(
          duration: UiConstants.duration,
          switchInCurve: UiConstants.switchInCurve,
          switchOutCurve: UiConstants.switchOutCurve,
          child: Icon(
            _controller.currentData.icon,
            key: ValueKey(_controller.currentData),
          ),
        ),
      ),
    ),
  );
}
