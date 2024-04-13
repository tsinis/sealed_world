import "dart:ui";

import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_countries/src/models/locale/iso_locale.dart";
import "package:world_countries/src/models/locale/typed_locale.dart";

void main() => group("$TypedLocale", () {
      const english = LangEng();
      const country = "US";
      const locale = Locale("en", country);

      // TODO! Add interfaces tests.

      group("equality", () {
        test("should compare regular $Locale object with $TypedLocale", () {
          expect(const TypedLocale(english, country: country), locale);
          expect(
            TypedLocale.fromSubtags(language: english, country: country),
            locale,
          );
          expect(
            const TypedLocale(english, country: country),
            isNot(Locale(locale.languageCode)),
          );
        });

        test("should compare $IsoLocale object with $TypedLocale", () {
          expect(
            const TypedLocale(english, country: country),
            const IsoLocale(english, country: CountryUsa()),
          );
          expect(
            TypedLocale.fromSubtags(language: english, country: country),
            const IsoLocale(english, country: CountryUsa()),
          );
          expect(
            const TypedLocale(english, country: country),
            isNot(const IsoLocale(english)),
          );
        });
      });

      test("toJson", () {
        const value = TypedLocale(english, country: country);
        final json = value.toJson();
        final parsed = json.parse(BasicLocaleExtension.fromMap);
        expect(value.countryCode, parsed.countryCode);
        expect(value.language, parsed.language);
        expect(value.script, parsed.script);
      });
    });
