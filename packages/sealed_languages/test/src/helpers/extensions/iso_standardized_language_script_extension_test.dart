// ignore_for_file: deprecated_member_use_from_same_package, it's TODO!

import "package:sealed_languages/src/helpers/extensions/iso_standardized_language_script_extension.dart";
import "package:sealed_languages/src/interfaces/iso_standardized.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:test/test.dart";

void main() => group("IsoStandardizedLanguageScriptExtension", () {
  // ignore: avoid-explicit-type-declaration, it's tests.
  const IsoStandardized? nullValue = null;
  const script = ScriptLatn();
  const language = LangEng();

  group("isScript", () {
    test(
      "returns true for $Script instances",
      () => expect(script.isScript, isTrue),
    );

    test(
      "returns false for $NaturalLanguage instances",
      () => expect(language.isScript, isFalse),
    );

    test(
      "returns false for null values",
      () => expect(nullValue.isScript, isFalse),
    );
  });

  group("isNaturalLanguage", () {
    test(
      "returns true for $NaturalLanguage instances",
      () => expect(language.isNaturalLanguage, isTrue),
    );

    test(
      "returns false for $Script instances",
      () => expect(script.isNaturalLanguage, isFalse),
    );

    test(
      "returns false for null values",
      () => expect(nullValue.isNaturalLanguage, isFalse),
    );
  });
});
