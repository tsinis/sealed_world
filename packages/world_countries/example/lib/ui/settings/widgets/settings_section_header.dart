import "package:flutter/material.dart";
import "package:world_countries/helpers.dart";

/// A Material 3 style section header with a title.
/// Insert inside the settings list to visually group related slider tiles.
final class SettingsSectionHeader extends StatelessWidget {
  const SettingsSectionHeader(
    this.title, {
    this.padding = const EdgeInsets.only(top: 24, left: 24),
    super.key,
  });

  /// Section title text.
  final String title;

  /// Optional custom padding (defaults to dense M3 spacing).
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) => Padding(
    padding: padding,
    child: Text(
      title,
      style: context.theme.textTheme.titleMedium?.copyWith(
        color: context.theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
