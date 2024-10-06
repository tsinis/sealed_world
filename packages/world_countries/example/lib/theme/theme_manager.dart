import "package:flutter/material.dart";

import "theme_provider.dart";

class ThemeManager extends StatefulWidget {
  const ThemeManager({required this.child, super.key});

  final Widget child;

  @override
  State<ThemeManager> createState() => _ThemeManagerState();
}

class _ThemeManagerState extends State<ThemeManager> {
  List<Color> _colors = const [];

  @override
  Widget build(BuildContext context) => ThemeProvider(
        _colors,
        // ignore: prefer-correct-handler-name, it's not a handler.
        onColorsChange: (colors) => setState(() => _colors = colors),
        child: widget.child,
      );
}
