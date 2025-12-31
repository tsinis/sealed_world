import "package:sealed_countries/src/helpers/extensions/country_submodels/continent_extension.dart";
import "package:sealed_countries/src/model/geo/submodels/continent.dart";
import "package:sealed_countries/src/model/geo/submodels/subregion.dart";
import "package:test/test.dart";

void main() => group("ContinentExtension", () {
  test(
    "subregions empty for continents without children",
    () => expect(const Antarctica().subregions, isEmpty),
  );

  test("subregions returns all sections for Americas", () {
    final result = const Americas().subregions;

    const expected = {
      CentralAmerica(),
      NorthAmerica(),
      SouthAmerica(),
      Caribbean(),
    };

    expect(result, expected);
  });
});
