import "dart:ui";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/models/locale/iso_locale.dart";
import "package:world_countries/src/models/locale/typed_locale.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$IsoLocale", () {
      const english = LangEng();
      const country = CountryUsa();
      const locale = Locale("en", "US");
      const value = IsoLocale(english, country: country);

      test("interfaces", () {
        expect(value, isA<BasicLocale>());
        expect(value, isA<TypedLocale>());
        expect(value, isA<Locale>());
        expect(value, isA<JsonEncodable>());
      });

      group("equality", () {
        test("should compare regular $Locale object with $IsoLocale", () {
          expect(value, locale);
          expect(
            IsoLocale.fromSubtags(language: english, country: country),
            locale,
          );
          expect(value, isNot(Locale(locale.languageCode)));
        });

        test("should compare $TypedLocale object with $IsoLocale", () {
          expect(value, TypedLocale(english, country: locale.countryCode));
          expect(
            IsoLocale.fromSubtags(language: english, country: country),
            TypedLocale(english, country: locale.countryCode),
          );
          expect(
            IsoLocale.fromSubtags(language: english, country: country),
            TypedLocale.fromSubtags(
              language: english,
              country: locale.countryCode,
            ),
          );
          expect(value, isNot(const TypedLocale(english)));
        });
      });

      group("withTranslationsCache constructor", () {
        assertTest(
          "should throw assert when no iterable specified",
          () => IsoLocale.withTranslationsCache(
            const LangEng(),
            languages: null,
            currencies: null,
            countries: null,
          ),
        );

        test("should create translation cache for everything", () {
          final isoLocale = IsoLocale.withTranslationsCache(
            const LangEng(),
            country: const CountryUsa(),
          );
          expect(isoLocale, isA<IsoLocale>());
          expect(isoLocale.country, isA<WorldCountry>());
          expect(isoLocale.languageTranslations, isNotEmpty);
          expect(isoLocale.currencyTranslations, isNotEmpty);
          expect(isoLocale.countryTranslations, isNotEmpty);
        });
      });

      group("copyWith", () {
        test("with non-null values", () {
          final copy = value.copyWith(
            language: NaturalLanguage.list.first,
            country: WorldCountry.list.first,
            script: Script.list.last,
          );
          expect(copy.language, NaturalLanguage.list.first);
          expect(copy.countryCode, WorldCountry.list.first.codeShort);
          expect(copy.country, WorldCountry.list.first);
          expect(copy.script, Script.list.last);
          expect(copy.language, isNot(value.language));
          expect(copy.countryCode, isNot(value.countryCode));
          expect(copy.script, isNot(value.script));
        });

        test("with null values", () {
          final copy = value.copyWith();
          expect(copy.language, value.language);
          expect(copy.country, value.country);
          expect(copy.script, value.script);
        });
      });
    });
