import "package:sealed_countries/src/helpers/world_country/world_country_names.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

void main() => group("WorldCountryNames", () {
      group("namesCommonNative", () {
        final country =
            WorldCountry.list.firstWhere((c) => c.namesNative.length > 1);

        test(
          "separator",
          () => expect(
            country.namesCommonNative(separator: "-"),
            """${country.namesNative.first.name}-${country.namesNative.last.name}""",
          ),
        );

        group("skipFirst", () {
          test(
            "with multiple names",
            () => expect(
              country.namesCommonNative(skipFirst: true),
              country.namesNative.last.name,
            ),
          );

          test(
            "with single name",
            () {
              final singleNameCountry = WorldCountry.list.firstWhere(
                (c) => c.namesNative.length == 1,
              );
              expect(
                singleNameCountry.namesCommonNative(skipFirst: true),
                singleNameCountry.namesNative.first.name,
              );
            },
          );
        });
      });

      group("namesOfficialNative", () {
        final country =
            WorldCountry.list.firstWhere((c) => c.namesNative.length > 1);

        test(
          "separator",
          () => expect(
            country.namesOfficialNative(separator: "-"),
            """${country.namesNative.first.fullName}-${country.namesNative.last.fullName}""",
          ),
        );

        group("skipFirst", () {
          test(
            "with multiple names",
            () => expect(
              country.namesOfficialNative(skipFirst: true),
              country.namesNative.last.fullName,
            ),
          );

          test(
            "with single name",
            () {
              final singleNameCountry = WorldCountry.list.firstWhere(
                (c) => c.namesNative.length == 1,
              );
              expect(
                singleNameCountry.namesOfficialNative(skipFirst: true),
                singleNameCountry.namesNative.first.fullName,
              );
            },
          );
        });
      });
    });
