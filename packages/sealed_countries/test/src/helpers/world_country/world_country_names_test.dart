import "package:sealed_countries/src/helpers/world_country/world_country_names.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

void main() => group("WorldCountryNames", () {
  group("namesOfficialNative", () {
    final country = WorldCountry.list.firstWhere(
      (cnt) => cnt.namesNative.length > 1,
    );

    test(
      "separator",
      () => expect(
        country.namesOfficialNative(separator: "-"),
        """${country.namesNative.first.fullName}-${country.namesNative.last.fullName}""",
      ),
    );

    group("skipFirst", () {
      const fallback = "Fallback Official Name";
      final singleNameCountry = WorldCountry.list.firstWhere(
        (cnt) => cnt.namesNative.length == 1,
      );

      test(
        "with multiple names",
        () => expect(
          country.namesOfficialNative(skipFirst: true),
          country.namesNative.last.fullName,
        ),
      );

      test(
        "with single name",
        () => expect(
          singleNameCountry.namesOfficialNative(skipFirst: true),
          singleNameCountry.namesNative.first.fullName,
        ),
      );

      test(
        "with single name and orElse",
        () => expect(
          singleNameCountry.namesOfficialNative(
            skipFirst: true,
            orElse: fallback,
          ),
          fallback,
        ),
      );

      test(
        "with single name and orElse but skipFirst false",
        () => expect(
          singleNameCountry.namesOfficialNative(orElse: fallback),
          singleNameCountry.namesNative.first.fullName,
        ),
      );

      test(
        "with multiple names and orElse",
        () => expect(
          country.namesOfficialNative(skipFirst: true, orElse: fallback),
          country.namesNative.last.fullName,
        ),
      );
    });
  });
});
