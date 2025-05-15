import "package:sealed_countries/src/data/official_world_countries.data.dart";
import "package:sealed_countries/src/helpers/extensions/iso_standardized_world_country_extension.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

void main() => group("IsoStandardizedWorldCountryExtension", () {
  // ignore: avoid-explicit-type-declaration, it's tests.
  const IsoStandardized? nullValue = null;
  const script = ScriptLatn();
  const country = CountryAbw();

  group("isWorldCountry", () {
    test(
      "returns true for $WorldCountry instances",
      () => expect(country.isWorldCountry, isTrue),
    );

    test(
      "returns false for $Script instances",
      () => expect(script.isWorldCountry, isFalse),
    );

    test(
      "returns false for null values",
      () => expect(nullValue.isWorldCountry, isFalse),
    );
  });
});
