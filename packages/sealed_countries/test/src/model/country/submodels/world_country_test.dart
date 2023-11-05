import "package:sealed_countries/country_translations.dart";
import "package:sealed_countries/src/helpers/world_country/world_country_date_time.dart";
import "package:sealed_countries/src/helpers/world_country/world_country_getters.dart";
import "package:sealed_countries/src/helpers/world_country/world_country_json.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

void main() => group("$WorldCountry", () {
      final value = WorldCountry.list.last;
      final array = {value, WorldCountry.list.first};

      test("interfaces", () {
        expect(value, isA<Country>());
        expect(value, isA<IsoStandardized>());
        expect(value, isA<IsoTranslated>());
        expect(value, isA<JsonEncodable>());
        expect(value, isA<Named>());
        expect(value, isA<Translated>());
      });

      group("fields", () {
        final officialCountries =
            WorldCountry.list.where((country) => country.isOfficiallyAssigned);

        for (final element in officialCountries) {
          test("of $WorldCountry: ${element.name}", () {
            if (element.postalCode != null) {
              expect(element.postalCode?.format, isNotEmpty);
              expect(element.postalCode?.regExpPattern, isNotEmpty);
            } else {
              expect(element.postalCode, isNull);
            }
            expect(
              element.capitalInfo?.capital.deFacto,
              element.capitalInfo != null ? isNotEmpty : isNull,
            );
            expect(
              element.capitalInfo?.latLng,
              element.capitalInfo != null ? isNotNull : isNull,
            );
            expect(element.fifa, element.fifa != null ? isNotEmpty : isNull);
            if (element.gini != null) {
              expect(element.gini?.year, isPositive);
              expect(element.gini?.coefficient, isPositive);
            } else {
              expect(element.gini, isNull);
            }
            expect(element.demonyms, isNotEmpty);
            expect(element.demonyms.first.language, const LangEng());
            expect(
              element.bordersCodes,
              element.bordersCodes != null ? isNotEmpty : isNull,
            );
            expect(
              element.subregion?.name,
              element.subregion != null ? isNotEmpty : isNull,
            );
            expect(element.idd.root, isPositive);
            expect(element.idd.suffixes, isNotEmpty);
            expect(
              element.currencies,
              element.currencies != null ? isNotEmpty : isNull,
            );
            expect(element.cioc, element.cioc != null ? isNotEmpty : isNull);
            for (final zone in element.timezones) {
              expect(zone.length, 9);
              expect(zone.startsWith(WorldCountryDateTime.utcString), isTrue);
              // ignore: avoid-substring, no emojis here.
              expect(zone.substring(6, 7), ":");
            }
            expect(element.startOfWeek.name, isNotEmpty);
            expect(element.startOfWeek, isA<Enum>());
            expect(element.hasCoatOfArms, isA<bool>());
            expect(element.landlocked, isA<bool>());
            expect(element.unMember, isA<bool>());
            expect(element.independent, isA<bool>());
            expect(element.timezones, isA<List<String>>());
            expect(element.timezones, isNotEmpty);
            expect(
              element.car.sign,
              element.car.sign == null ? isNull : isNotEmpty,
            );
            expect(element.car.isRightSide, isA<bool>());
            expect(element.population, isNonNegative);
            expect(element.areaMetric, isNonNegative);
            expect(element.maps.googleMaps, isNotEmpty);
            expect(element.maps.openStreetMaps, isNotEmpty);
            expect(element.emoji, isNotEmpty);
            expect(element.latLng, isNotNull);
            expect(element.translations, isNotEmpty);
            expect(element.languages, isNotEmpty);
            expect(element.continent.name, isNotEmpty);
            expect(element.altSpellings, isNotEmpty);
            expect(element.code, isA<String>());
            expect(element.code, isNotEmpty);
            expect(element.codeNumeric, isA<String>());
            expect(element.codeNumeric, isNotEmpty);
            expect(element.codeShort, isA<String>());
            expect(element.codeShort, isNotEmpty);
            expect(element.namesNative, isNotEmpty);
            expect(element.tld, isNotEmpty);
            expect(element.codeOther, element.codeShort);
            for (final domain in element.tld) {
              expect(domain, isNotEmpty);
            }
          });
        }
      });

      group("equality", () {
        test("basic", () {
          expect(WorldCountry.list.first, isNot(equals(value)));
          expect(WorldCountry.list.last, same(value));
          expect(
            WorldCountry.fromCodeShort(WorldCountry.list.last.codeShort),
            same(value),
          );
          expect(
            WorldCountry.fromCodeShort(WorldCountry.list.last.codeShort),
            same(WorldCountry.list.last),
          );
        });

        test("with ${array.runtimeType}", () {
          expect(array.length, 2);
          array.addAll(List.of(array));
          expect(array.length, 2);
          array.add(WorldCountry.fromCodeShort(value.codeShort));
          expect(array.length, 2);
        });
      });

      test("toString", () {
        expect(value.toString(short: false), contains(value.code));
        expect(value.toString().contains(value.codeShort), isFalse);
      });

      group("fromCodeShort", () {
        test(
          "with proper code",
          () => expect(WorldCountry.fromCodeShort(value.codeShort), value),
        );

        test(
          "with wrong code",
          () => expect(
            () => WorldCountry.fromCodeShort(value.toString()),
            throwsStateError,
          ),
        );

        test(
          "with empty countries",
          () => expect(
            () => WorldCountry.fromCodeShort(value.codeShort, const []),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      group("fromCode", () {
        test(
          "with proper code",
          () => expect(WorldCountry.fromCode(value.code), value),
        );

        test(
          "with wrong code",
          () => expect(
            () => WorldCountry.fromCode(value.toString()),
            throwsStateError,
          ),
        );

        test(
          "with empty countries",
          () => expect(
            () => WorldCountry.fromCode(value.code, const []),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      group("fromCodeNumeric", () {
        test(
          "with proper code",
          () => expect(WorldCountry.fromCodeNumeric(value.codeNumeric), value),
        );

        test(
          "with wrong code",
          () => expect(
            () => WorldCountry.fromCodeNumeric(value.toString()),
            throwsStateError,
          ),
        );

        test(
          "with empty countries",
          () => expect(
            () => WorldCountry.fromCodeNumeric(value.codeNumeric, const []),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      group("fromAnyCode", () {
        test(
          "with numeric code",
          () => expect(
            WorldCountry.fromAnyCode(array.last.codeNumeric),
            array.last,
          ),
        );

        test(
          "with short code",
          () => expect(WorldCountry.fromAnyCode(value.codeShort), value),
        );

        test(
          "with regular code",
          () => expect(WorldCountry.fromAnyCode(value.code), value),
        );

        test(
          "with wrong code",
          () => expect(
            () => WorldCountry.fromAnyCode(value.toString()),
            throwsStateError,
          ),
        );

        test(
          "with empty countries",
          () => expect(
            () => WorldCountry.fromAnyCode(value.codeNumeric, const []),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      group("toJson", () {
        for (final element in WorldCountry.list) {
          test("compared to $WorldCountry: ${element.name.name}", () {
            final json = element.toJson();

            expect(json, isNotEmpty);
            final decoded = json.tryParse(WorldCountryJson.fromMap);
            expect(
              decoded?.toString(short: false),
              json.parse(WorldCountryJson.fromMap).toString(short: false),
            );

            expect(element.code, decoded?.code);
            expect(element.postalCode, decoded?.postalCode);
            expect(element.capitalInfo, decoded?.capitalInfo);
            expect(element.fifa, decoded?.fifa);
            expect(element.gini, decoded?.gini);
            expect(element.demonyms, decoded?.demonyms);
            expect(element.bordersCodes, decoded?.bordersCodes);
            expect(element.subregion, decoded?.subregion);
            expect(element.idd, decoded?.idd);
            expect(element.currencies, decoded?.currencies);
            expect(element.cioc, decoded?.cioc);
            expect(element.startOfWeek, decoded?.startOfWeek);
            expect(element.hasCoatOfArms, decoded?.hasCoatOfArms);
            expect(element.landlocked, decoded?.landlocked);
            expect(element.unMember, decoded?.unMember);
            expect(element.independent, decoded?.independent);
            expect(element.timezones, decoded?.timezones);
            expect(element.car, decoded?.car);
            expect(element.population, decoded?.population);
            expect(element.areaMetric, decoded?.areaMetric);
            expect(element.maps, decoded?.maps);
            expect(element.emoji, decoded?.emoji);
            expect(element.latLng, decoded?.latLng);
            expect(element.translations, decoded?.translations);
            expect(element.languages, decoded?.languages);
            expect(element.continent, decoded?.continent);
            expect(element.altSpellings, decoded?.altSpellings);
            expect(element.codeNumeric, decoded?.codeNumeric);
            expect(element.codeShort, decoded?.codeShort);
            expect(element.namesNative, decoded?.namesNative);
            expect(element.tld, decoded?.tld);
          });
        }
      });

      group("maybeFromValue", () {
        test(
          "with proper value, without where",
          () => expect(
            WorldCountry.maybeFromValue(value.code),
            value,
          ),
        );

        test(
          "with proper value, with where",
          () => expect(
            WorldCountry.maybeFromValue(
              value.code,
              where: (lang) => lang.code,
            ),
            value,
          ),
        );

        test(
          "with wrong value, without where",
          () => expect(
            WorldCountry.maybeFromValue(value),
            isNull,
          ),
        );

        test(
          "with wrong value, with where",
          () => expect(
            WorldCountry.maybeFromValue(
              value,
              where: (lang) => lang.codeShort,
            ),
            isNull,
          ),
        );

        test(
          "with empty countries",
          () => expect(
            () => WorldCountry.maybeFromValue(
              value.codeShort,
              countries: const [],
            ),
            throwsA(isA<AssertionError>()),
          ),
        );

        test(
          "with custom countries",
          () => expect(
            WorldCountry.maybeFromValue(value.code, countries: array),
            value,
          ),
        );
      });

      group("fromAnyCode", () {
        test(
          "with numeric code",
          () => expect(
            WorldCountry.maybeFromAnyCode(array.last.codeNumeric),
            array.last,
          ),
        );

        test(
          "with short code",
          () => expect(WorldCountry.maybeFromAnyCode(value.codeShort), value),
        );

        test(
          "with regular code",
          () => expect(WorldCountry.maybeFromAnyCode(value.code), value),
        );

        test(
          "with wrong code",
          () => expect(
            WorldCountry.maybeFromAnyCode(value.toString()),
            isNull,
          ),
        );

        test(
          "with empty countries",
          () => expect(
            () => WorldCountry.maybeFromAnyCode(value.code, const []),
            throwsA(isA<AssertionError>()),
          ),
        );
      });

      group("translations", () {
        test("translation should always provide at least eng translation", () {
          const abkhazia = LangAbk();
          const nonExistCode = "";
          var count = 0;
          for (final value in WorldCountry.list) {
            final maybeMissing = value.maybeTranslation(
              abkhazia,
              countryCode: nonExistCode,
              useLanguageFallback: false,
            );
            if (maybeMissing != null) continue;
            count++;
            expect(
              value.translation(abkhazia, countryCode: nonExistCode),
              isNotNull,
            );
          }
          expect(count, isPositive);
        });

        test("there should be always minimum translations count available", () {
          final map = {
            for (final country in WorldCountry.list) country: 0,
          };

          for (final l10n in NaturalLanguage.list) {
            for (final value in WorldCountry.list) {
              final hasTranslationForValue = value.maybeTranslation(l10n);
              if (hasTranslationForValue != null) map[value] = map[value]! + 1;
            }
          }

          final sortedList = map.entries.toList(growable: false)
            ..sort((a, b) => a.value.compareTo(b.value));
          expect(
            sortedList.first.value,
            kSealedCurrenciesSupportedLanguages.length,
          );
        });

        test("there should be always translations for specific languages", () {
          final map = {
            for (final language in NaturalLanguage.list) language: 0,
          };

          for (final l10n in NaturalLanguage.list) {
            for (final value in WorldCountry.list) {
              final hasTranslationForValue = value.maybeTranslation(l10n);
              if (hasTranslationForValue != null) map[l10n] = map[l10n]! + 1;
            }
          }

          final sortedList = map.entries.toList(growable: false)
            ..sort((a, b) => a.value.compareTo(b.value));
          final complete = sortedList
              .where((item) => item.value >= WorldCountry.list.length);
          final sortedMap = Map.fromEntries(complete);

          expect(sortedMap.keys, kSealedCountriesSupportedLanguages);

          for (final country in WorldCountry.list) {
            for (final l10n in kSealedCountriesSupportedLanguages) {
              if (l10n == const LangEng()) continue;
              expect(
                country.translation(l10n),
                isNot(country.translation(const LangEng())),
              );
            }
          }
        });
      });
    });
