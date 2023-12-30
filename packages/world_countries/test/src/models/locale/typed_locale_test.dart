import "dart:ui";

import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_countries/src/models/locale/iso_locale.dart";
import "package:world_countries/src/models/locale/typed_locale.dart";

void main() => group("$TypedLocale", () {
      const english = LangEng();
      const country = "US";
      const locale = Locale("en", country);

      group("equality", () {
        test("should compare regular $Locale object with $TypedLocale", () {
          expect(const TypedLocale(english, country: country), locale);
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
            const TypedLocale(english, country: country),
            isNot(const IsoLocale(english)),
          );
        });
      });
    });
