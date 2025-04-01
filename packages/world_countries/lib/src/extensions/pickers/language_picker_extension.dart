import "package:world_flags/world_flags.dart" show NaturalLanguage;

import "../../widgets/language/language_picker.dart";

/// Extension on [LanguagePicker] to provide additional functionality.
extension LanguagePickerExtension on LanguagePicker {
  /// Returns the list of natural languages being displayed by this widget.
  Iterable<NaturalLanguage> get languages => items;
}
