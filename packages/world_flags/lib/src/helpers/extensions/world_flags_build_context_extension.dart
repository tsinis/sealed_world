// Stage 1 deprecation: fallback to deprecated FlagThemeData -> ThemeExtension.
// ignore_for_file: deprecated_member_use_from_same_package
import "package:flutter/material.dart" show Theme;
import "package:flutter/widgets.dart" show BuildContext;

import "../../interfaces/decorated_flag_interface.dart";
import "../../theme/flag_theme.dart";
import "../../theme/flag_theme_data.dart";

/// This extension provides convenient access to the [DecoratedFlagInterface]
/// from the [BuildContext].
///
/// It allows you to easily retrieve the flag theme data associated with the
/// current context without having to explicitly call
/// `FlagTheme.maybeOf(context)`.
extension WorldFlagsBuildContextExtension on BuildContext {
  /// Retrieves the [DecoratedFlagInterface] from the current context.
  ///
  /// Checks for an ambient [FlagTheme] first (and its resolvers, which
  /// includes the Material ThemeExtension bridge registered by
  /// `world_countries`). If none is found, falls back to the ambient
  /// Material `ThemeData` extension for [FlagThemeData] during Stage 1.
  DecoratedFlagInterface? get flagTheme =>
      FlagTheme.maybeOf(this) ?? Theme.of(this).extension<FlagThemeData>();
}
