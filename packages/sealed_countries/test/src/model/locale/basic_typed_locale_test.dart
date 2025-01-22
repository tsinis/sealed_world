import "package:_sealed_world_tests/sealed_world_tests.dart";
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
        assertTest(
          "not",
          () => BasicTypedLocale(
            NaturalLanguage.list.first,
            country: WorldCountry.list.first,
            script: Script.list.last,
          ),
          shouldThrow: false,
        );

        assertTest(
          "countryCode length",
          () => BasicTypedLocale(NaturalLanguage.list.last, regionalCode: "1"),
        );
      });

      group("toString", () {
        test("short: true", () => expect(value.toString(), "aa_Zzzz_AW"));

        test(
          "short: false",
          () => expect(
            value.toString(short: false),
            '''BasicTypedLocale(LangAar(), countryCode: "AW", script: ScriptZzzz())''',
          ),
        );
      });
    });
