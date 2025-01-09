import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_countries/src/extensions/world_country_extension.dart";
import "package:world_countries/src/models/locale/iso_locale.dart";
import "package:world_countries/src/models/locale/typed_locale.dart";
import "package:world_flags/world_flags.dart";

void main() => group("WorldCountryExtension ", () {
      final value = WorldCountry.list.first;

      group("toLocale", () {
        test(
          "should return correct $Locale instance with codeShort",
          () => expect(
            value.toLocale(),
            Locale(
              value.languages.first.codeShort.toLowerCase(),
              value.codeShort,
            ),
          ),
        );

        test(
          "should return correct $Locale instance with all properties",
          () {
            final language = NaturalLanguage.list.first;
            const scriptCode = "scriptCode";
            expect(
              value.toLocale(language: language, scriptCode: scriptCode),
              Locale.fromSubtags(
                languageCode: language.codeShort.toLowerCase(),
                scriptCode: scriptCode,
                countryCode: value.codeShort,
              ),
            );
          },
        );
      });

      group("toIsoLocale", () {
        test(
          "should return correct $IsoLocale instance",
          () => expect(
            value.toIsoLocale(),
            IsoLocale(
              value.languages.first,
              country: value,
              script: value.languages.first.scripts.first,
            ),
          ),
        );

        test(
          "should return correct $IsoLocale instance with all properties",
          () {
            final convertedLocale = value.toIsoLocale(
              language: NaturalLanguage.list.first,
              script: Script.list.first,
            );
            expect(
              convertedLocale,
              IsoLocale(
                NaturalLanguage.list.first,
                country: value,
                script: Script.list.first,
              ),
            );

            expect(
              convertedLocale,
              TypedLocale.fromSubtags(
                language: NaturalLanguage.list.first,
                // ignore: deprecated_member_use_from_same_package, it's TODO!
                country: value.codeShort,
                script: Script.list.first,
              ),
            );
          },
        );
      });
    });
