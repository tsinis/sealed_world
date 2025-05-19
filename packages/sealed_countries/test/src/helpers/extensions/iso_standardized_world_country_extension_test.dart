// ignore_for_file: prefer-explicit-type-arguments

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

  group("mapWhenOrNull", () {
    test("returns correct value for $WorldCountry", () {
      final result = country.mapWhenOrNull(
        country: (iso) => "country:${iso.code}",
        currency: (_) => "fail",
        language: (_) => "fail",
        script: (_) => "fail",
      );
      expect(result, "country:ABW");
    });

    test("returns correct value for $Script", () {
      final result = script.mapWhenOrNull(
        country: (_) => "fail",
        currency: (_) => "fail",
        language: (_) => "fail",
        script: (iso) => "script:${iso.code}",
      );
      expect(result, "script:Latn");
    });

    test("returns correct value for $FiatCurrency", () {
      const currency = FiatUsd();
      final result = currency.mapWhenOrNull(
        country: (_) => "fail",
        currency: (iso) => "currency:${iso.code}",
        language: (_) => "fail",
        script: (_) => "fail",
      );
      expect(result, "currency:USD");
    });

    test("returns correct value for $NaturalLanguage", () {
      const language = LangEng();
      final result = language.mapWhenOrNull(
        country: (_) => "fail",
        currency: (_) => "fail",
        language: (iso) => "language:${iso.code}",
        script: (_) => "fail",
      );
      expect(result, "language:ENG");
    });

    test("returns null if no matching callback is provided", () {
      expect(country.mapWhenOrNull(), isNull);
      expect(script.mapWhenOrNull(), isNull);
    });

    test(
      "returns null for null instance",
      () => expect(
        nullValue.mapWhenOrNull(
          country: (_) => "fail",
          currency: (_) => "fail",
          language: (_) => "fail",
          script: (_) => "fail",
        ),
        isNull,
      ),
    );
  });
});
