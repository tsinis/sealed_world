import "package:flutter/material.dart";

import "../../theme/flag_theme_data.dart";

/// A set of useful extensions for [BuildContext] related to the `world_flags`
/// package.
///
/// This extension provides convenient access to the [FlagThemeData] from the
/// current theme.
extension WorldFlagsBuildContextExtension on BuildContext {
  /// Retrieves the [FlagThemeData] from the current theme.
  ///
  /// This getter allows you to easily access the flag theme data within the
  /// current [BuildContext]. If no [FlagThemeData] is found in the current
  /// theme, this returns `null`.
  FlagThemeData? get flagTheme => Theme.of(this).extension<FlagThemeData>();
}
