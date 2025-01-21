// ignore_for_file: deprecated_member_use, it's TODO!

import "package:_sealed_world_tests/sealed_world_tests.dart";
// ignore: deprecated_member_use_from_same_package, it's TODO!
import "package:sealed_countries/country_translations.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:test/test.dart";

// ignore: prefer-correct-identifier-length, just for testing.
enum _WorldCountryTest { de, rus }

void main() => group("$WorldCountry", () {
      final value = WorldCountry.list.first;
      final officialList = List<WorldCountry>.unmodifiable(
        WorldCountry.list.take(WorldCountry.list.length - 1),
      );
      final array = {officialList.last, value};

      test("interfaces", () {
        expect(value, isA<Country>());
        expect(value, isA<IsoStandardized>());
        expect(value, isA<IsoTranslated>());
        expect(value, isA<JsonEncodable>());
        expect(value, isA<Named>());
        expect(value, isA<Translated>());
      });

      assertTest(
        "permissive constructor",
        () => WorldCountry.list.last.tld,
        shouldThrow: false,
        alsoExpect: () => expect(WorldCountry.list.last.tld, isEmpty),
      );

      group("fields", () {
        final officialCountries =
            WorldCountry.list.where((country) => country.isOfficiallyAssigned);

        for (final element in officialCountries) {
          test("of $WorldCountry: ${element.name.common}", () {
            if (element.postalCode == null) {
              expect(element.postalCode, isNull);
            } else {
              expect(element.postalCode?.format, isNotEmpty);
              expect(element.postalCode?.regExpPattern, isNotEmpty);
            }
            expect(
              element.capitalInfo?.capital.deFacto,
              element.capitalInfo == null ? isNull : isNotEmpty,
            );
            expect(
              element.capitalInfo?.latLng,
              element.capitalInfo == null ? isNull : isNotNull,
            );
            expect(element.fifa, element.fifa == null ? isNull : isNotEmpty);
            if (element.gini == null) {
              expect(element.gini, isNull);
            } else {
              expect(element.gini?.year, isPositive);
              expect(element.gini?.coefficient, isPositive);
            }
            expect(element.demonyms, isNotEmpty);
            expect(element.demonyms.first.language, const LangEng());
            expect(
              element.bordersCodes,
              element.bordersCodes == null ? isNull : isNotEmpty,
            );
            expect(
              element.subregion?.name,
              element.subregion == null ? isNull : isNotEmpty,
            );
            expect(element.idd.root, isPositive);
            expect(element.idd.suffixes, isNotEmpty);
            expect(
              element.currencies,
              element.currencies == null ? isNull : isNotEmpty,
            );
            expect(element.cioc, element.cioc == null ? isNull : isNotEmpty);
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
            expect(element.internationalName, element.name.common);
            for (final domain in element.tld) {
              expect(domain, isNotEmpty);
            }
          });
        }
      });

      group("maps O(1) access time check", () {
        for (final element in officialList) {
          performanceTest("of $WorldCountry: ${element.name.common}", () {
            expect(WorldCountry.map[element.code], element);
            expect(WorldCountry.codeMap[element.code], element);
            expect(WorldCountry.codeShortMap[element.codeShort], element);
            expect(
              WorldCountry.codeNumericMap[element.codeNumeric],
              element,
            );
          });
        }
      });

      group("equality", () {
        test("basic", () {
          expect(WorldCountry.list.last, isNot(equals(value)));
          expect(WorldCountry.list.first, same(value));
          expect(
            WorldCountry.fromCodeShort(WorldCountry.list.first.codeShort),
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
        group("with custom array", () {
          performanceTest(
            "with proper code",
            () => expect(
              WorldCountry.fromCodeShort(value.codeShort, array),
              value,
            ),
          );

          performanceTest(
            "with proper code lowercase",
            () => expect(
              WorldCountry.fromCodeShort(value.codeShort.toLowerCase(), array),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => WorldCountry.fromCodeShort(value.toString(), array),
              throwsStateError,
            ),
          );

          assertTest(
            "with empty countries",
            () => WorldCountry.fromCodeShort(value.codeShort, const []),
          );
        });

        group("without custom array", () {
          performanceTest(
            "from $Enum",
            () => expect(
              WorldCountry.fromCodeShort(_WorldCountryTest.de),
              const CountryDeu(),
            ),
          );

          performanceTest(
            "with proper code",
            () => expect(WorldCountry.fromCodeShort(value.codeShort), value),
          );

          performanceTest(
            "with proper code lowercase",
            () => expect(
              WorldCountry.fromCodeShort(value.codeShort.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => WorldCountry.fromCodeShort(value.toString()),
              throwsStateError,
            ),
          );
        });
      });

      group("fromCode", () {
        group("with custom array", () {
          performanceTest(
            "with proper code",
            () => expect(WorldCountry.fromCode(value.code, array), value),
          );

          performanceTest(
            "with proper code lowercase",
            () => expect(
              WorldCountry.fromCode(value.code.toLowerCase(), array),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => WorldCountry.fromCode(value.toString(), array),
              throwsStateError,
            ),
          );

          assertTest(
            "with empty countries",
            () => WorldCountry.fromCode(value.code, const []),
          );
        });

        group("without custom array", () {
          performanceTest(
            "from $Enum",
            () => expect(
              WorldCountry.fromCode(_WorldCountryTest.rus),
              const CountryRus(),
            ),
          );

          performanceTest(
            "with proper code",
            () => expect(WorldCountry.fromCode(value.code), value),
          );

          performanceTest(
            "with proper code lowercase",
            () =>
                expect(WorldCountry.fromCode(value.code.toLowerCase()), value),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => WorldCountry.fromCode(value),
              throwsStateError,
            ),
          );
        });
      });

      group("fromCodeNumeric", () {
        group("with custom array", () {
          performanceTest(
            "with proper code",
            () => expect(
              WorldCountry.fromCodeNumeric(value.codeNumeric, array),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => WorldCountry.fromCodeNumeric(value, array),
              throwsStateError,
            ),
          );

          assertTest(
            "with empty countries",
            () => WorldCountry.fromCodeNumeric(value.codeNumeric, const []),
          );
        });

        group("without custom array", () {
          test(
            "from int",
            () => expect(WorldCountry.fromCodeNumeric(100), const CountryBgr()),
          );

          performanceTest(
            "with proper code",
            () =>
                expect(WorldCountry.fromCodeNumeric(value.codeNumeric), value),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => WorldCountry.fromCodeNumeric(value),
              throwsStateError,
            ),
          );
        });
      });

      group("fromAnyCode", () {
        group("with custom array", () {
          performanceTest(
            "with numeric code",
            () => expect(
              WorldCountry.fromAnyCode(array.last.codeNumeric, array),
              array.last,
            ),
          );

          performanceTest(
            "with short code",
            () =>
                expect(WorldCountry.fromAnyCode(value.codeShort, array), value),
          );

          performanceTest(
            "with short code lowercase",
            () => expect(
              WorldCountry.fromAnyCode(value.codeShort.toLowerCase(), array),
              value,
            ),
          );

          performanceTest(
            "with regular code",
            () => expect(WorldCountry.fromAnyCode(value.code, array), value),
          );

          performanceTest(
            "with regular code lowercase",
            () => expect(
              WorldCountry.fromAnyCode(value.code.toLowerCase(), array),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => WorldCountry.fromAnyCode(value, array),
              throwsStateError,
            ),
          );

          assertTest(
            "with empty countries",
            () => WorldCountry.fromAnyCode(value.codeNumeric, const []),
          );
        });

        group("without custom array", () {
          test(
            "from int",
            () => expect(WorldCountry.fromAnyCode(100), const CountryBgr()),
          );

          test(
            "from $Enum",
            () => expect(
              WorldCountry.fromAnyCode(_WorldCountryTest.rus),
              const CountryRus(),
            ),
          );

          performanceTest(
            "with numeric code",
            () => expect(
              WorldCountry.fromAnyCode(array.last.codeNumeric),
              array.last,
            ),
          );

          performanceTest(
            "with short code",
            () => expect(WorldCountry.fromAnyCode(value.codeShort), value),
          );

          performanceTest(
            "with short code lowercase",
            () => expect(
              WorldCountry.fromAnyCode(value.codeShort.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with regular code",
            () => expect(WorldCountry.fromAnyCode(value.code), value),
          );

          performanceTest(
            "with regular code lowercase",
            () => expect(
              WorldCountry.fromAnyCode(value.code.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              () => WorldCountry.fromAnyCode(value.toString()),
              throwsStateError,
            ),
          );
        });
      });

      group("toJson", () {
        for (final element in WorldCountry.list) {
          test("compared to $WorldCountry: ${element.name.common}", () {
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
        performanceTest(
          "with proper value, without where",
          () => expect(WorldCountry.maybeFromValue(value.code), value),
        );

        performanceTest(
          "with proper value, with where",
          () => expect(
            WorldCountry.maybeFromValue(
              value.code,
              where: (country) => country.code,
            ),
            value,
          ),
        );

        performanceTest(
          "with wrong value, without where",
          () => expect(WorldCountry.maybeFromValue(value), isNull),
        );

        performanceTest(
          "with wrong value, with where",
          () => expect(
            WorldCountry.maybeFromValue(
              value,
              where: (country) => country.codeShort,
            ),
            isNull,
          ),
        );

        assertTest(
          "with empty countries",
          () =>
              WorldCountry.maybeFromValue(value.codeShort, countries: const []),
        );

        performanceTest(
          "with custom countries",
          () => expect(
            WorldCountry.maybeFromValue(value.code, countries: array),
            value,
          ),
        );
      });

      group("maybeFromAnyCode", () {
        group("with custom array", () {
          performanceTest(
            "with numeric code",
            () => expect(
              WorldCountry.maybeFromAnyCode(array.last.codeNumeric, array),
              array.last,
            ),
          );

          performanceTest(
            "with short code",
            () => expect(
              WorldCountry.maybeFromAnyCode(value.codeShort, array),
              value,
            ),
          );

          performanceTest(
            "with short code lowercase",
            () => expect(
              WorldCountry.maybeFromAnyCode(
                value.codeShort.toLowerCase(),
                array,
              ),
              value,
            ),
          );

          performanceTest(
            "with regular code",
            () => expect(
              WorldCountry.maybeFromAnyCode(value.code, array),
              value,
            ),
          );

          performanceTest(
            "with regular code lowercase",
            () => expect(
              WorldCountry.maybeFromAnyCode(value.code.toLowerCase(), array),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              WorldCountry.maybeFromAnyCode(value, array),
              isNull,
            ),
          );

          assertTest(
            "with empty countries",
            () => WorldCountry.maybeFromAnyCode(value.code, const []),
          );
        });

        group("without custom array", () {
          test(
            "from int",
            () =>
                expect(WorldCountry.maybeFromAnyCode(100), const CountryBgr()),
          );

          test(
            "from $Enum",
            () => expect(
              WorldCountry.maybeFromAnyCode(_WorldCountryTest.rus),
              const CountryRus(),
            ),
          );

          performanceTest(
            "with numeric code",
            () => expect(
              WorldCountry.maybeFromAnyCode(array.last.codeNumeric),
              array.last,
            ),
          );

          performanceTest(
            "with short code",
            () => expect(WorldCountry.maybeFromAnyCode(value.codeShort), value),
          );

          performanceTest(
            "with short code lowercase",
            () => expect(
              WorldCountry.maybeFromAnyCode(value.codeShort.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with regular code",
            () => expect(WorldCountry.maybeFromAnyCode(value.code), value),
          );

          performanceTest(
            "with regular code lowercase",
            () => expect(
              WorldCountry.maybeFromAnyCode(value.code.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(WorldCountry.maybeFromAnyCode(value), isNull),
          );
        });
      });

      group("maybeFromCodeNumeric", () {
        group("with custom array", () {
          performanceTest(
            "with numeric code",
            () => expect(
              WorldCountry.maybeFromCodeNumeric(array.last.codeNumeric, array),
              array.last,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              WorldCountry.maybeFromCodeNumeric(value, array),
              isNull,
            ),
          );

          assertTest(
            "with empty countries",
            () =>
                WorldCountry.maybeFromCodeNumeric(value.codeNumeric, const []),
          );
        });

        group("without custom array", () {
          test(
            "from int",
            () => expect(
              WorldCountry.maybeFromCodeNumeric(100),
              const CountryBgr(),
            ),
          );

          performanceTest(
            "with numeric code",
            () => expect(
              WorldCountry.maybeFromCodeNumeric(array.last.codeNumeric),
              array.last,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(WorldCountry.maybeFromCodeNumeric(value), isNull),
          );
        });
      });

      group("maybeFromCode", () {
        group("with custom array", () {
          performanceTest(
            "with regular code",
            () => expect(
              WorldCountry.maybeFromCode(value.code, array),
              value,
            ),
          );

          performanceTest(
            "with regular code lowercase",
            () => expect(
              WorldCountry.maybeFromCode(value.code.toLowerCase(), array),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              WorldCountry.maybeFromCode(value.toString(), array),
              isNull,
            ),
          );

          assertTest(
            "with empty countries",
            () => WorldCountry.maybeFromCode(value.code, const []),
          );
        });

        group("without custom array", () {
          performanceTest(
            "from $Enum",
            () => expect(
              WorldCountry.maybeFromCode(_WorldCountryTest.rus),
              const CountryRus(),
            ),
          );

          performanceTest(
            "with regular code",
            () => expect(WorldCountry.maybeFromCode(value.code), value),
          );

          performanceTest(
            "with regular code lowercase",
            () => expect(
              WorldCountry.maybeFromCode(value.code.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(WorldCountry.maybeFromCode(value), isNull),
          );
        });
      });

      group("maybeFromCodeShort", () {
        group("with custom array", () {
          performanceTest(
            "with short code",
            () => expect(
              WorldCountry.maybeFromCodeShort(value.codeShort, array),
              value,
            ),
          );

          performanceTest(
            "with short code lowercase",
            () => expect(
              WorldCountry.maybeFromCodeShort(
                value.codeShort.toLowerCase(),
                array,
              ),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(
              WorldCountry.maybeFromCodeShort(value, array),
              isNull,
            ),
          );

          assertTest(
            "with empty countries",
            () => WorldCountry.maybeFromCodeShort(value.codeShort, const []),
          );
        });

        group("without custom array", () {
          test(
            "from $Enum",
            () => expect(
              WorldCountry.maybeFromCodeShort(_WorldCountryTest.de),
              const CountryDeu(),
            ),
          );

          performanceTest(
            "with short code",
            () =>
                expect(WorldCountry.maybeFromCodeShort(value.codeShort), value),
          );

          performanceTest(
            "with short code lowercase",
            () => expect(
              WorldCountry.maybeFromCodeShort(value.codeShort.toLowerCase()),
              value,
            ),
          );

          performanceTest(
            "with wrong code",
            () => expect(WorldCountry.maybeFromCodeShort(value), isNull),
          );
        });
      });

      group("asserts", () {
        assertTest(
          "not",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: const [],
            demonyms: value.demonyms,
            currencies: value.currencies,
          ),
          shouldThrow: false,
        );

        assertTest(
          "code length",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.codeShort,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
          ),
        );

        assertTest(
          "codeNumeric length",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeShort,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
          ),
        );

        assertTest(
          "codeShort length",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.code,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
          ),
        );

        assertTest(
          "emoji length",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: "",
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
          ),
        );

        assertTest(
          "namesNative empty",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: const [],
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
          ),
        );

        assertTest(
          "altSpellings empty",
          () => WorldCountry(
            name: value.name,
            altSpellings: const [],
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
          ),
        );

        assertTest(
          "languages empty",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: const [],
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
          ),
        );

        assertTest(
          "timezones empty",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: const [],
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
          ),
        );

        assertTest(
          "demonyms empty",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: const [],
            currencies: value.currencies,
          ),
        );

        assertTest(
          "cioc length",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
            cioc: "",
          ),
        );

        assertTest(
          "fifa length",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
            fifa: "",
          ),
        );

        assertTest(
          "bordersCodes empty",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
            bordersCodes: const [],
          ),
        );

        assertTest(
          "regionalBlocs empty",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: value.tld,
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
            regionalBlocs: const [],
          ),
        );

        assertTest(
          "tld empty",
          () => WorldCountry(
            name: value.name,
            altSpellings: value.altSpellings,
            areaMetric: value.areaMetric,
            code: value.code,
            codeNumeric: value.codeNumeric,
            codeShort: value.codeShort,
            continent: value.continent,
            emoji: value.emoji,
            idd: value.idd,
            languages: value.languages,
            latLng: value.latLng,
            maps: value.maps,
            namesNative: value.namesNative,
            population: value.population,
            timezones: value.timezones,
            tld: const [],
            translations: value.translations,
            demonyms: value.demonyms,
            currencies: value.currencies,
            regionalBlocs: value.regionalBlocs,
          ),
        );
      });

      group("translations", () {
        test("translation should always provide at least eng translation", () {
          const language = LangZha();
          const nonExistCode = "000";
          int count = 0;
          for (final country in WorldCountry.list) {
            final maybeMissing = country.maybeTranslation(
              const BasicLocale(language, countryCode: nonExistCode),
              useLanguageFallback: false,
            );
            // ignore: avoid-continue, it's just a test.
            if (maybeMissing != null) continue;
            count += 1;
            expect(
              country.translation(
                const BasicLocale(language, countryCode: nonExistCode),
              ),
              isNotNull,
            );
          }
          expect(count, isPositive);
        });

        test("there should be always minimum translations count available", () {
          final map = {for (final country in WorldCountry.list) country: 0};

          for (final l10n in NaturalLanguage.list) {
            for (final country in WorldCountry.list) {
              final hasTranslationForValue =
                  country.maybeTranslation(BasicLocale(l10n));
              if (hasTranslationForValue != null) {
                map[country] = map[country]! + 1;
              }
            }
          }

          final sortedList = map.entries.toList(growable: false)
            ..sort((a, b) => a.value.compareTo(b.value));
          expect(sortedList.first.value, 114);
        });

        test("there should be always translations for specific languages", () {
          final map = {for (final lang in NaturalLanguage.list) lang: 0};
          final missing = <NaturalLanguage, Set<WorldCountry>>{};

          for (final l10n in NaturalLanguage.list) {
            for (final country in WorldCountry.list) {
              final hasTranslationForValue =
                  country.maybeTranslation(BasicLocale(l10n));
              if (hasTranslationForValue == null) {
                missing[l10n] = {...?missing[l10n], country};
              } else {
                map[l10n] = map[l10n]! + 1;
              }
            }
          }

          final sortedList = map.entries.toList(growable: false)
            ..sort((a, b) => a.value.compareTo(b.value));
          final complete = sortedList
              .where((item) => item.value >= WorldCountry.list.length);
          final sortedMap = Map.fromEntries(complete);
          final sortedLanguages = sortedMap.keys.toList(growable: false)
            ..sort((a, b) => a.code.compareTo(b.code));

          expect(
            sortedLanguages,
            containsAll(kMaterialSupportedLanguagesSealed),
          );

          expect(sortedLanguages, kSealedCountriesSupportedLanguages);

          for (final country in WorldCountry.list) {
            for (final l10n in kSealedCountriesSupportedLanguages) {
              // ignore: avoid-continue, it's just a test.
              if (l10n == const LangEng()) continue;
              expect(
                country.translation(BasicLocale(l10n)),
                isNot(country.translation(const BasicLocale(LangEng()))),
              );
            }
          }
        });

        group("commonNamesCacheMap", () {
          performanceTest(
            "languages in supported list should have all translations",
            () {
              for (final language in kSealedCountriesSupportedLanguages) {
                final cache = WorldCountry.list.commonNamesCacheMap(
                  BasicLocale(language, script: language.scripts.first),
                );
                expect(cache.length, WorldCountry.list.length);
              }
            },
          );

          performanceTest(
            """some languages should have at smaller amount translations of it's own name""",
            () {
              final cache = WorldCountry.list
                  .commonNamesCacheMap(const BasicLocale(LangKal()));
              expect(cache.length, lessThan(WorldCountry.list.length));
            },
          );
        });
      });
    });
