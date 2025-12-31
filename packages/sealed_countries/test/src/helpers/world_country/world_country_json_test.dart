import "dart:convert";

import "package:sealed_countries/src/helpers/world_country/world_country_json.dart";
import "package:sealed_countries/src/model/country/submodels/world_country.dart";
import "package:test/test.dart";

void main() => group("WorldCountryJson", () {
  group("fromMap", () {
    test(
      "throws ArgumentError when codes missing",
      () =>
          expect(() => WorldCountryJson.fromMap(const {}), throwsArgumentError),
    );

    test("deserializes WorldCountry from toJson output", () {
      final source = WorldCountry.list.firstWhere(
        (country) => country.regionalBlocs?.isNotEmpty ?? false,
      );
      final decoded = WorldCountryJson.fromMap(jsonDecode(source.toJson()));

      expect(decoded, isA<CountryCustom>());
      expect(decoded.code, source.code);
      expect(decoded.codeNumeric, source.codeNumeric);
      expect(decoded.codeShort, source.codeShort);
      expect(decoded.name, source.name);
      expect(decoded.continent, source.continent);
      expect(decoded.latLng, source.latLng);
      expect(decoded.languages, source.languages);
      expect(decoded.regionalBlocs, source.regionalBlocs);
      expect(decoded.namesNative, source.namesNative);
    });
  });
});
