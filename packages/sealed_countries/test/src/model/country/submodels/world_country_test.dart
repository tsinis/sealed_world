import "package:sealed_countries/src/helpers/world_country/world_country_date_time.dart";
import "package:sealed_countries/src/helpers/world_country/world_country_getters.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

void main() => group("$WorldCountry", () {
      final value = WorldCountry.list.last;
      final array = {value, WorldCountry.list.first};

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
    });
