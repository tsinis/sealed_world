import "dart:math" show max;

import "package:flutter/material.dart";
import "package:world_countries/helpers.dart";
import "package:world_countries/world_countries.dart";

import "settings_toolbar.dart";

class SliverSettingsAppBar extends StatelessWidget {
  const SliverSettingsAppBar(
    this._flag, {
    this.padding = const EdgeInsets.all(30),
    this.title = "Flag Settings",
    this.onReset,
    super.key,
  });

  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types
  static const double toolbarHeight = kToolbarHeight;

  final IsoFlag _flag;
  final String title;
  final EdgeInsets padding;
  final VoidCallback? onReset;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final flagHeight = _flag.height ?? 0;
    final collapsedHeight = padding.vertical + flagHeight;
    final expandedHeight = toolbarHeight + padding.vertical + flagHeight;

    return SliverLayoutBuilder(
      builder: (_, constraints) {
        final collapseRange = max(expandedHeight - collapsedHeight, 1);
        final diff = (constraints.scrollOffset / collapseRange).clamp(0, 1);
        final toolbarOpacity = (1.0 - diff).clamp(0.0, 1.0);

        return SliverAppBar(
          automaticallyImplyLeading: false,
          backgroundColor: theme.colorScheme.surface,
          collapsedHeight: collapsedHeight,
          expandedHeight: expandedHeight,
          scrolledUnderElevation: 0,
          titleSpacing: 4,
          pinned: true,
          title: IgnorePointer(
            ignoring: toolbarOpacity == 0,
            child: AnimatedOpacity(
              curve: Curves.easeOut,
              opacity: toolbarOpacity,
              duration: kThemeAnimationDuration,
              child: SettingsToolbar(title, onReset: onReset),
            ),
          ),
          flexibleSpace: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: flagHeight,
              margin: padding,
              child: FittedBox(child: _flag),
            ),
          ),
        );
      },
    );
  }
}
