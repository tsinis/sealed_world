import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";

import "../interfaces/decorated_flag_interface.dart";
import "decorated_flag_data.dart";

/// An inherited widget that defines the visual props for flags in its subtree.
///
/// This provides a widgets-level theme carrier for [DecoratedFlagInterface]
/// data, decoupled from the Material library.
final class FlagTheme extends InheritedTheme {
  /// Creates a [FlagTheme] with the given [data].
  ///
  /// - [data]: The flag properties to provide down the widget tree.
  /// - [child]: The widget subtree below this theme in the tree hierarchy.
  const new({required this.data, required super.child, super.key});

  /// Returns the [DecoratedFlagInterface] from the closest [FlagTheme]
  /// instance that encloses the given context.
  ///
  /// If no [FlagTheme] is found, it queries the [fallbackResolvers] in order.
  /// If no resolver provides a theme, it returns a default all-null instance.
  static DecoratedFlagInterface of(BuildContext context) =>
      maybeOf(context) ?? const DecoratedFlagData();

  /// Returns the [DecoratedFlagInterface] from the closest [FlagTheme]
  /// instance that encloses the given context, or from the fallback resolvers.
  ///
  /// Returns `null` if no theme can be resolved.
  static DecoratedFlagInterface? maybeOf(BuildContext context) {
    final inherited = context.dependOnInheritedWidgetOfExactType<FlagTheme>();
    if (inherited != null) return inherited.data;

    for (final resolve in fallbackResolvers) {
      final resolvedData = resolve(context);
      if (resolvedData != null) return resolvedData;
    }

    return null;
  }

  /// Clears the fallback resolvers. Intended for use in test `tearDown`.
  @visibleForTesting
  // ignore: avoid-collection-mutating-methods, intentional for tests.
  static void debugResetFallbackResolvers() => fallbackResolvers.clear();

  /// Permanent public API for adapter packages (like `world_countries`) to
  /// bridge their own theme carrier (like Material `ThemeExtension`) into
  /// `world_flags`.
  static final fallbackResolvers =
      <DecoratedFlagInterface? Function(BuildContext)>[];

  /// The flag properties provided down the widget tree.
  final DecoratedFlagInterface data;

  @override
  bool updateShouldNotify(FlagTheme oldWidget) => data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) =>
      FlagTheme(data: data, child: child);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<DecoratedFlagInterface>("data", data));
  }
}
