import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "../tabs/tabs_data_controller.dart";

class FloatingButton extends StatelessWidget {
  const FloatingButton(this.controller, {required this.onPressed, super.key});

  final ValueSetter<bool> onPressed;
  final TabsDataController controller;

  @override
  Widget build(BuildContext context) => InkWell(
        onLongPress: () => onPressed(true),
        child: FloatingActionButton(
          onPressed: () => onPressed(false),
          child: AnimatedBuilder(
            animation: controller,
            builder: (_, __) => AnimatedSwitcher(
              duration: UiConstants.duration,
              switchInCurve: UiConstants.switchInCurve,
              switchOutCurve: UiConstants.switchOutCurve,
              child: Icon(
                controller.currentData.icon,
                key: ValueKey(controller.currentData),
              ),
            ),
          ),
        ),
      );
}
