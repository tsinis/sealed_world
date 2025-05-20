import "package:sealed_countries/src/data/official_world_countries.data.dart";
import "package:sealed_countries/src/helpers/world_country/world_country_copy_with.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:test/test.dart";

void main() {
  const value = CountryAut();
  final nonConst = CountryAut(); //ignore: prefer_const_constructors, it's test.
  // ignore: prefer_final_locals, prefer_const_constructors, it's a test.
  var varValue = CountryAut(); // ignore: prefer-type-over-var, it's a test.

  group("WorldCountryBoolGetters", () {
    test("boolean getter should work for compile-time const", () {
      expect(value.isDeu, isFalse);
      expect(value.isAut, isTrue);
    });

    test("boolean getter should work for non-compile-time const", () {
      expect(nonConst.isDeu, isFalse);
      expect(nonConst.isAut, isTrue);
    });

    test("boolean getter should work var declaration", () {
      expect(varValue.isDeu, isFalse);
      expect(varValue.isAut, isTrue);

      final string = const CountryDeu().code;

      WorldCountry copy = varValue.copyWith(codeNumeric: string);
      expect(copy.isDeu, isFalse);
      expect(copy.isAut, isTrue);
      expect(copy.codeNumeric, string);

      copy = varValue.copyWith(code: string);
      expect(copy.isAut, isFalse);
      expect(copy.isDeu, isTrue);
      expect(copy.code, string);
    });
  });

  group("WorldCountryFunctional", () {
    test("boolean getter should work for compile-time const", () {
      final maybeWhen = value.maybeWhen(
        countryAut: () => true,
        orElse: () => false,
      );
      expect(maybeWhen, isTrue);
    });

    test("boolean getter should work for non-compile-time const", () {
      final whenOrNull = nonConst.whenOrNull(countryAut: () => true);
      expect(whenOrNull, isTrue);
    });

    test("boolean getter should work var declaration", () {
      final maybeMap = varValue.maybeMap(
        countryAut: (_) => true,
        orElse: (_) => false,
      );
      expect(maybeMap, isTrue);
    });
  });
}
