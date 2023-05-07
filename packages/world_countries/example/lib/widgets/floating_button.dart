import "package:flutter/foundation.dart" show ValueListenable;
import "package:flutter/material.dart";

import "../models/tabs.dart";

class FloatingButton extends StatelessWidget {
  const FloatingButton(this.selectedTab, {required this.onPressed, super.key});

  final ValueSetter<bool> onPressed;
  final ValueListenable<Tabs> selectedTab;

  @override
  Widget build(BuildContext context) => InkWell(
        child: FloatingActionButton(
          child: ValueListenableBuilder<Tabs>(
            valueListenable: selectedTab,
            builder: (_, tab, __) => AnimatedSwitcher(
              // ignore: sort_child_properties_last, against arguments-ordering.
              child: Icon(tab.icon, key: Key(tab.name)),
              duration: const Duration(milliseconds: 300),
              switchInCurve: Curves.easeOutSine,
              switchOutCurve: Curves.easeInSine,
            ),
          ),
          onPressed: () => onPressed(false),
        ),
        onLongPress: () => onPressed(true),
      );
}
