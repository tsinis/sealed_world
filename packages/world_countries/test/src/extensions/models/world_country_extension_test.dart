import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/models/world_country_extension.dart";
import "package:world_countries/src/model/locale/typed_locale.dart";
import "package:world_flags/world_flags.dart";

void main() => group("WorldCountryExtension", () {
  final value = WorldCountry.list.first;

  group("toLocale", () {
    test(
      "should return correct $Locale instance with codeShort",
      () => expect(
        value.toLocale(),
        Locale(value.languages.first.codeShort.toLowerCase(), value.codeShort),
      ),
    );

    test("should return correct $Locale instance with all properties", () {
      final language = NaturalLanguage.list.first;
      const scriptCode = "scriptCode";
      expect(
        value.toLocale(language: language, scriptCode: scriptCode),
        Locale.fromSubtags(
          languageCode: language.codeShort.toLowerCase(),
          scriptCode: scriptCode,
          countryCode: value.codeShort,
        ),
      );
    });
  });

  group("toTypedLocale", () {
    const script = ScriptLatn();
    test(
      "should return correct $TypedLocale instance with codeShort",
      () => expect(
        value.toTypedLocale(),
        TypedLocale(value.languages.first, country: value, script: script),
      ),
    );

    test("should return correct $TypedLocale instance with all properties", () {
      final language = NaturalLanguage.list.first;
      expect(
        value.toTypedLocale(language: language, script: script),
        TypedLocale(language, script: script, country: value),
      );
    });
  });
});
