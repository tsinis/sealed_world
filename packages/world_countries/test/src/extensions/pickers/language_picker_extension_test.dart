import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/pickers/language_picker_extension.dart";
import "package:world_countries/src/widgets/language/language_picker.dart";
import "package:world_flags/world_flags.dart";

void main() => group("LanguagePickerExtension", () {
  const picker = LanguagePicker();

  test("languages", () {
    expect(picker.languages, isNotEmpty);
    expect(picker.languages, everyElement(isA<NaturalLanguage>()));
  });
});
