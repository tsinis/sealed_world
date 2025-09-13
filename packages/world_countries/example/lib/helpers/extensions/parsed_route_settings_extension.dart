import "package:flutter/widgets.dart";

import "../../model/constants.dart";
import "../../routing/parsed_route.dart";

/// Settings-specific helpers for adding/removing the `/settings` suffix.
extension ParsedRouteSettingsExtension on ParsedRoute {
  bool get isSettingsRoute => path.endsWith(Constants.settingsSuffix);

  String get pathWithSettings =>
      isSettingsRoute ? path : path + Constants.settingsSuffix;

  String get pathWithoutSettings {
    if (!isSettingsRoute) return path;

    return path.characters
        .getRange(0, path.length - Constants.settingsSuffix.length)
        .toString();
  }
}
