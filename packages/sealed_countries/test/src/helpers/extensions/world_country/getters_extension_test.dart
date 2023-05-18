import "package:sealed_countries/src/helpers/extensions/world_country/getters_extension.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

void main() => group("GettersExtension", () {
      final value = WorldCountry.list.first;

      test(
        "iso3166oneAlpha3",
        () => expect(value.iso3166oneAlpha3, value.code),
      );

      test(
        "iso3166oneAlpha2",
        () => expect(value.iso3166oneAlpha2, value.codeShort),
      );

      test(
        "iso3166oneNumeric",
        () => expect(value.iso3166oneNumeric, value.codeNumeric),
      );

      group("isOfficiallyAssigned", () {
        test(
          "should return false if country is not officially assigned",
          () => expect(WorldCountry.list.last.isOfficiallyAssigned, isFalse),
        );

        test(
          "should return true if country is officially assigned",
          () => expect(value.isOfficiallyAssigned, isTrue),
        );
      });
    });
