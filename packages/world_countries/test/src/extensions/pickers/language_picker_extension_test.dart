// ignore_for_file: unnecessary_async, just a test.

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/pickers/language_picker_extension.dart";
import "package:world_countries/src/widgets/language/language_picker.dart";

void main() => group("LanguagePickerExtension", () {
  const picker = LanguagePicker();

  test("languages", () => expect(picker.items, picker.languages));
});
