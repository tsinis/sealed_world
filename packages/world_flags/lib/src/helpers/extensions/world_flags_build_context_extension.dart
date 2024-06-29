import "package:flutter/material.dart";

import "../../theme/flag_theme_data.dart";

/// A set of useful extensions for `BuildContext` related to the world_flags
/// package.
extension WorldFlagsBuildContextExtension on BuildContext {
  FlagThemeData? get flagTheme => Theme.of(this).extension<FlagThemeData>();
}
