import "package:sealed_languages/src/helpers/extensions/basic_locale_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/language/submodels/natural_language.dart";
import "package:sealed_languages/src/model/script/submodels/script.dart";
import "package:sealed_languages/src/model/translated_name.dart";
import "package:test/test.dart";

void main() => group("BasicLocaleExtension", () {
  const value = BasicLocale(LangEng());
  const string = "01";

  group("copyWith", () {
    test("with non-null values", () {
      final copy = value.copyWith(
        language: NaturalLanguage.list.first,
        countryCode: string,
        script: Script.list.last,
      );
      expect(copy.language, NaturalLanguage.list.first);
      expect(copy.countryCode, string);
      expect(copy.script, Script.list.last);
      expect(copy.language, isNot(value.language));
      expect(copy.countryCode, isNot(value.countryCode));
      expect(copy.script, isNot(value.script));
    });

    test("with null values", () {
      final copy = value.copyWith();
      expect(copy.language, value.language);
      expect(copy.countryCode, value.countryCode);
      expect(copy.script, value.countryCode);
    });
  });

  test("regionalCode", () {
    final copy = value.copyWith(countryCode: string);
    expect(copy.regionalCode, copy.countryCode);
    expect(copy.regionalCode, string);
  });

  group("toUnicodeLocaleId", () {
    test("with language only", () => expect(value.toUnicodeLocaleId(), "en"));

    test(
      "with script only",
      () => expect(
        const BasicLocale(LangSrp(), script: ScriptCyrl()).toUnicodeLocaleId(),
        "sr_Cyrl",
      ),
    );

    test(
      "with country code only",
      () => expect(
        const BasicLocale(LangEng(), countryCode: " us ").toUnicodeLocaleId(),
        "en_US",
      ),
    );

    test(
      "with script, country code and custom separator",
      () => expect(
        const BasicLocale(
          LangSrp(),
          countryCode: "RS",
          script: ScriptLatn(),
        ).toUnicodeLocaleId(separator: "-"),
        "sr-Latn-RS",
      ),
    );
  });

  group("toMap", () {
    test("with language only", () => expect(value.toMap(), {"language": "en"}));

    test(
      "with all fields",
      () => expect(
        const BasicLocale(
          LangSrp(),
          countryCode: " rs ",
          script: ScriptCyrl(),
        ).toMap(),
        {"countryCode": "RS", "language": "sr", "script": "Cyrl"},
      ),
    );
  });

  test(
    "toTranslatedName",
    () => expect(
      value.toTranslatedName(string),
      TranslatedName(value.language, name: string),
    ),
  );
});
