import "dart:ui";

import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/models/locale/iso_locale.dart";
import "package:world_countries/src/models/locale/typed_locale.dart";
import "package:world_flags/world_flags.dart";

void main() => group("$TypedLocale", () {
      const english = LangEng();
      const string = "US";
      const locale = Locale("en", string);
      const value = TypedLocale(english, country: string);

      test("interfaces", () {
        expect(value, isA<BasicLocale>());
        expect(value, isA<Locale>());
        expect(value, isA<JsonEncodable>());
      });

      group("equality", () {
        test("should compare regular $Locale object with $TypedLocale", () {
          expect(value, locale);
          expect(
            TypedLocale.fromSubtags(language: english, country: string),
            locale,
          );
          expect(value, isNot(Locale(locale.languageCode)));
        });

        test("should compare $IsoLocale object with $TypedLocale", () {
          expect(value, const IsoLocale(english, country: CountryUsa()));
          expect(
            TypedLocale.fromSubtags(language: english, country: string),
            const IsoLocale(english, country: CountryUsa()),
          );
          expect(value, isNot(const IsoLocale(english)));
        });
      });

      group("withTranslationsCache constructor", () {
        test(
          "should throw assert when no iterable specified",
          () => expect(
            () => TypedLocale.withTranslationsCache(const LangEng()),
            throwsA(isA<AssertionError>()),
          ),
        );

        test("should create translation cache for everything", () {
          final typedLocale = TypedLocale.withTranslationsCache(
            const LangEng(),
            country: "US",
          );
          expect(typedLocale, isA<TypedLocale>());
          expect(typedLocale.country, isA<String>());
          expect(typedLocale.languageTranslations, isNotEmpty);
          expect(typedLocale.currencyTranslations, isNotEmpty);
          expect(typedLocale.countryTranslations, isNotEmpty);
        });
      });

      test("toJson", () {
        final json = value.toJson();
        final parsed = json.parse(BasicLocaleExtension.fromMap);
        expect(value.countryCode, parsed.countryCode);
        expect(value.language, parsed.language);
        expect(value.script, parsed.script);
      });

      group("copyWith", () {
        test("with non-null values", () {
          final copy = value.copyWith(
            language: NaturalLanguage.list.first,
            country: WorldCountry.list.first.codeShort,
            script: Script.list.last,
          );
          expect(copy.language, NaturalLanguage.list.first);
          expect(copy.country, WorldCountry.list.first.codeShort);
          expect(copy.countryCode, WorldCountry.list.first.codeShort);
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
