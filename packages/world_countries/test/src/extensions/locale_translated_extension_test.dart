// ignore_for_file: deprecated_member_use_from_same_package, for tests.

import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_countries/src/extensions/locale_translated_extension.dart";
import "package:world_countries/src/models/locale/iso_locale.dart";

void main() => group("LocaleTranslatedExtension ", () {
      const country = CountryUsa();
      const language = LangAbk();

      const typedLocale = IsoLocale(language, country: country);

      group("maybeTranslate", () {
        test(
          "should return null",
          () => expect(country.maybeTranslate(null), isNull),
        );

        test(
          "should not return null",
          () => expect(country.maybeTranslate(typedLocale)?.name, isNotEmpty),
        );
      });

      group("translate", () {
        test(
          "should not return null",
          () => expect(
            const CountryAfg().translate(typedLocale).name,
            isNotEmpty,
            reason: "Uses english as fallback language for translation",
          ),
        );
      });
    });
