import "package:world_flags/world_flags.dart" show WorldCountry;

import "../../widgets/country/country_picker.dart";

/// Extension on [CountryPicker] to provide additional functionality.
extension CountryPickerExtension on CountryPicker {
  /// Returns the list of world countries being displayed by this widget.
  Iterable<WorldCountry> get countries => resolvedItems();
}
