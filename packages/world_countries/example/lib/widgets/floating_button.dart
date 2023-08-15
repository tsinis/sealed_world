import "package:flutter/foundation.dart" show ValueListenable;
import "package:flutter/material.dart";

import "../models/tabs.dart";

class FloatingButton extends StatelessWidget {
  const FloatingButton(this.selectedTab, {required this.onPressed, super.key});

  final ValueSetter<bool> onPressed;
  final ValueListenable<Tabs> selectedTab;

  @override
  Widget build(BuildContext context) => InkWell(
        onLongPress: () => onPressed(true),
        child: FloatingActionButton(
          onPressed: () => onPressed(false),
          child: ValueListenableBuilder<Tabs>(
            valueListenable: selectedTab,
            builder: (_, tab, __) => AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              switchInCurve: Curves.easeOutSine,
              switchOutCurve: Curves.easeInSine,
              child: Icon(tab.icon, key: Key(tab.name)),
            ),
          ),
        ),
      );
}
