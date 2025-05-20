import "package:sealed_countries/src/model/country/country.dart";
import "package:sealed_countries/src/model/locale/basic_typed_locale.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

void main() => group("BasicTypedLocaleExtension", () {
  final value = BasicTypedLocale(
    NaturalLanguage.list.first,
    country: WorldCountry.list.first,
    script: Script.list.last,
  );

  test("regionalCode", () {
    expect(value.regionalCode, isNotEmpty);
    expect(value.countryCode, value.regionalCode);
  });
});
