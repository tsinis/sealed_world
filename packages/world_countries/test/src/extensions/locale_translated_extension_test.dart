import "package:flutter_test/flutter_test.dart";
import "package:world_countries/world_countries.dart";

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
