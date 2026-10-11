import "dart:convert";

import "package:sealed_countries/src/helpers/world_country/world_country_json.dart";
import "package:sealed_countries/src/model/country/submodels/world_country.dart";
import "package:sealed_currencies/sealed_currencies.dart" show JsonMap;
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
      final decoded = WorldCountryJson.fromMap(
        // ignore: avoid-type-casts, it's a test.
        jsonDecode(source.toJson()) as JsonMap,
      );

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

    test("deserializes WorldCountry without regional blocs", () {
      final source = WorldCountry.list.firstWhere(
        (country) => country.regionalBlocs == null,
      );
      final map = source.toMap();
      expect(map.containsKey("regionalBlocs"), isFalse);

      final decoded = WorldCountryJson.fromMap(map);
      expect(decoded.regionalBlocs, isNull);
      expect(decoded.areaMetric, source.areaMetric);
    });

    test("accepts integer values for double fields", () {
      final source = WorldCountry.list.first;
      final decoded = WorldCountryJson.fromMap({
        ...source.toMap(),
        "areaMetric": 42,
        "latLng": const {"latitude": 1, "longitude": -2},
      });

      expect(decoded.areaMetric, 42.0);
      expect(decoded.latLng.latitude, 1.0);
      expect(decoded.latLng.longitude, -2.0);
    });
  });
});
