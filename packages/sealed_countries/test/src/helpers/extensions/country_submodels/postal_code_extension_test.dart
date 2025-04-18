import "package:sealed_countries/src/helpers/extensions/country_submodels/postal_code_extension.dart";
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
