import "package:flutter/material.dart";
import "package:world_countries/world_countries.dart";

import "theme_switcher.dart";

class ThemeManager extends StatefulWidget {
  const ThemeManager({required this.child, super.key});

  final Widget child;

  @override
  State<ThemeManager> createState() => _ThemeManagerState();
}

class _ThemeManagerState extends State<ThemeManager> {
  FlagProperties? _properties;

  void _onChange(FlagProperties? newProperties) =>
      setState(() => _properties = newProperties);
  @override
  Widget build(BuildContext context) => ThemeProvider(
        _properties,
        changeColors: _onChange,
        child: widget.child,
      );
}
