import "../../model/constants.dart";
import "../../routing/parsed_route.dart";

/// Settings-specific helpers for adding/removing the `/settings` suffix.
extension ParsedRouteSettingsExtension on ParsedRoute {
  bool get isSettingsRoute => path.endsWith(Constants.settingsSuffix);

  String get pathWithSettings =>
      isSettingsRoute ? path : path + Constants.settingsSuffix;

  String get pathWithoutSettings => isSettingsRoute
      // ignore: avoid-substring, no emojis here.
      ? path.substring(0, path.length - Constants.settingsSuffix.length)
      : path;
}
