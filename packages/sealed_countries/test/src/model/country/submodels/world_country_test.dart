import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

// ignore: long-method, it's a test.
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
            if (element.capitalInfo != null) {
              expect(element.capitalInfo?.capital, isNotEmpty);
            } else {
              expect(element.capitalInfo, isNull);
            }
            if (element.fifa != null) {
              expect(element.fifa, isNotEmpty);
            } else {
              expect(element.fifa, isNull);
            }
            if (element.gini != null) {
              expect(element.gini?.year, isPositive);
              expect(element.gini?.value, isPositive);
            } else {
              expect(element.gini, isNull);
            }
            if (element.demonyms != null) {
              expect(element.demonyms, isNotEmpty);
            } else {
              expect(element.demonyms, isNull);
            }
            if (element.bordersCodes != null) {
              expect(element.bordersCodes, isNotEmpty);
            } else {
              expect(element.bordersCodes, isNull);
            }
            if (element.subregion != null) {
              expect(element.subregion?.name, isNotEmpty);
            } else {
              expect(element.subregion, isNull);
            }
            expect(element.idd.root, isNotEmpty);
            expect(element.idd.suffixes, isNotEmpty);
            if (element.currencies != null) {
              expect(element.currencies, isNotEmpty);
            } else {
              expect(element.currencies, isNull);
            }
            if (element.cioc != null) {
              expect(element.cioc, isNotEmpty);
            } else {
              expect(element.cioc, isNull);
            }
            expect(element.startOfWeek.name, isNotEmpty);
            expect(element.startOfWeek, isA<Enum>());
            expect(element.hasCoatOfArms, isA<bool>());
            expect(element.landlocked, isA<bool>());
            expect(element.unMember, isA<bool>());
            expect(element.independent, isA<bool>());
            expect(element.timezones, isA<List<String>>());
            expect(element.timezones, isNotEmpty);
            expect(element.car.isRightSide, isA<bool>());
            expect(element.population, isNonNegative);
            expect(element.area, isNonNegative);
            expect(element.maps.googleMaps, isNotEmpty);
            expect(element.maps.openStreetMaps, isNotEmpty);
            expect(element.emoji, isNotEmpty);
            expect(element.latLng, isNotEmpty);
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
          expect(WorldCountry.list.last == value, isTrue);
          expect(
            WorldCountry.fromCodeShort(WorldCountry.list.last.codeShort) ==
                value,
            isTrue,
          );
          expect(
            WorldCountry.fromCodeShort(
                  WorldCountry.list.last.codeShort,
                ) ==
                WorldCountry.list.last,
            isTrue,
          );
        });

        test("with $Set", () {
          expect(array.length == 2, isTrue);
          array.addAll(array);
          expect(array.length == 2, isTrue);
          array.add(value);
          expect(array.length == 2, isTrue);
        });
      });

      test("toString", () {
        expect(value.toString(short: false), contains(value.code));
        expect(value.toString().contains(value.codeShort), isFalse);
      });

      group("borders", () {
        test(
          "with null bordersCodes",
          () => expect(
            WorldCountry.list.firstWhere((c) => c.borders == null).borders,
            isNull,
          ),
        );

        test(
          "with non-null bordersCodes",
          () => expect(
            WorldCountry.list.firstWhere((c) => c.borders != null).borders,
            isNotEmpty,
          ),
        );
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
