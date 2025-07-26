import "dart:convert";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_languages/src/helpers/extensions/basic_locale_extension.dart";
import "package:sealed_languages/src/model/core/basic_locale.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:sealed_languages/src/model/script/writing_system.dart";
import "package:test/test.dart";

void main() => group("$BasicLocale", () {
  const string = "01";
  final value = BasicLocale(
    NaturalLanguage.list.first,
    countryCode: string,
    script: Script.list.last,
  );

  group("asserts", () {
    assertTest(
      "not",
      () => BasicLocale(
        NaturalLanguage.list.first,
        countryCode: string,
        script: Script.list.last,
      ),
      shouldThrow: false,
    );

    assertTest(
      "countryCode length",
      () => BasicLocale(NaturalLanguage.list.last, countryCode: "1"),
    );
  });

  test("toJson", () {
    final json = value.toJson();
    final decoded = BasicLocaleExtension.fromMap(
      // ignore: avoid-type-casts, it's a test.
      jsonDecode(json) as Map<String, Object?>,
    );
    expect(value.countryCode, decoded.countryCode);
    expect(value.language, decoded.language);
    expect(value.script, decoded.script);
  });

  group("toString", () {
    test("short: true", () => expect(value.toString(), "aa_Zzzz_01"));

    test(
      "short: false",
      () => expect(
        value.toString(short: false),
        '''BasicLocale(LangAar(), countryCode: "$string", script: ScriptZzzz())''',
      ),
    );
  });
});
