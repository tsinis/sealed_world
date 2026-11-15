import "package:sealed_countries/src/helpers/extensions/country_submodels/postal_code_extension.dart";
import "package:sealed_countries/src/model/country/country.dart";
import "package:sealed_countries/src/model/country/submodels/postal_code.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("PostalCodeExtension", () {
  const code = "1234";
  final value = const PostalCode().validator();

  test("validator", () {
    expect(value, RegExp(const PostalCode().regExpPattern));
    expect(value.hasMatch("${code}5"), isTrue);
    expect(value.hasMatch(code), isFalse);
  });

  group("validator of Irish Eircode", () {
    final eircode = const CountryIrl().postalCode?.validator();

    for (final valid in const ["A65 F4E2", "A65F4E2", "D6W FN43", "T12 X70A"]) {
      test("accepts $valid", () => expect(eircode?.hasMatch(valid), isTrue));
    }

    for (final invalid in const [
      "SW1A1AA", // UK postcode.
      "GIR0AA", // UK postcode.
      "B65 F4E2", // B is not used in routing keys.
      "A65 F4B2", // B is not used in unique identifiers.
      "A6 F4E2",
      "A65 F4E",
      "a65 f4e2",
    ]) {
      test(
        "rejects $invalid",
        () => expect(eircode?.hasMatch(invalid), isFalse),
      );
    }
  });

  group("copyWith", () {
    const postalCodeValue = PostalCode();
    test("with non-null values", () {
      final copy = postalCodeValue.copyWith(format: TestData.string);
      expect(copy.format, TestData.string);
      expect(copy.regExpPattern, postalCodeValue.regExpPattern);
    });

    test("with null values", () {
      final copy = postalCodeValue.copyWith();
      expect(copy.format, postalCodeValue.format);
      expect(copy.regExpPattern, postalCodeValue.regExpPattern);
    });
  });
});
