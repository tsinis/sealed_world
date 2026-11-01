import "package:sealed_countries/src/model/country/country.dart";
import "package:sealed_countries/src/model/locale/basic_typed_locale.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

void main() => group("$BasicTypedLocale", () {
  final value = BasicTypedLocale(
    NaturalLanguage.list.first,
    country: WorldCountry.list.first,
    script: Script.list.last,
  );

  group("asserts", () {
    test(
      "not",
      () => expect(
        () => BasicTypedLocale(
          NaturalLanguage.list.first,
          country: WorldCountry.list.first,
          script: Script.list.last,
        ),
        returnsNormally,
      ),
    );

    test(
      "code length",
      () => expect(
        () => BasicTypedLocale(
          NaturalLanguage.list.first,
          country: WorldCountry.list.first,
          script: Script.list.last,
          regionalCode: WorldCountry.list.first.codeShort,
        ),
        throwsA(isA<AssertionError>()),
      ),
    );
  });

  group("toString", () {
    test("short: true", () => expect(value.toString(), "aa_Zzzz_AW"));

    test(
      "short: true, with regionalCode",
      () => expect(
        BasicTypedLocale(
          NaturalLanguage.list.first,
          script: Script.list.last,
          regionalCode: WorldCountry.list.last.codeShort,
        ).toString(),
        "aa_Zzzz_XK",
      ),
    );

    test(
      "short: false",
      () => expect(
        value.toString(short: false),
        "BasicTypedLocale(LangAar(), country: CountryAbw(), "
        "script: ScriptZzzz())",
      ),
    );
  });
});
