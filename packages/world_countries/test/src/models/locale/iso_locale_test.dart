import "dart:ui";

import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_countries/src/models/locale/iso_locale.dart";
import "package:world_countries/src/models/locale/typed_locale.dart";

void main() => group("$IsoLocale", () {
      const english = LangEng();
      const country = CountryUsa();
      const locale = Locale("en", "US");

      group("equality", () {
        test("should compare regular $Locale object with $IsoLocale", () {
          expect(const IsoLocale(english, country: country), locale);
          expect(
            const IsoLocale(english, country: country),
            isNot(Locale(locale.languageCode)),
          );
        });

        test("should compare $TypedLocale object with $IsoLocale", () {
          expect(
            const IsoLocale(english, country: country),
            TypedLocale(english, country: locale.countryCode),
          );
          expect(
            const IsoLocale(english, country: country),
            isNot(const TypedLocale(english)),
          );
        });
      });
    });
