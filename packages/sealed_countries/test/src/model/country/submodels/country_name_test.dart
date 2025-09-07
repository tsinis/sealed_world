import "dart:convert";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_countries/src/helpers/extensions/country_submodels/country_name_extension.dart";
import "package:sealed_countries/src/model/country/submodels/country_name.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$CountryName", () {
  const value = CountryName(
    language: LangEng(),
    official: TestData.string,
    common: TestData.string,
  );

  group("equality", () {
    const other = CountryName(
      language: LangFra(),
      official: TestData.string,
      common: TestData.string,
    );
    final array = {value, other};

    test("basic", () {
      expect(value, isNot(equals(other)));
      expect(value, same(array.first));
      expect(
        value,
        equals(
          CountryName(
            language: array.first.language,
            official: value.official,
            common: value.common,
          ),
        ),
      );
      expect(
        array.first,
        equals(
          CountryName(
            language: value.language,
            official: value.official,
            common: value.common,
          ),
        ),
      );
    });

    test("with ${array.runtimeType}", () {
      expect(array.length, 2);
      array.addAll(List.of(array));
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
      array.add(
        CountryName(
          language: value.language,
          official: value.official,
          common: value.common,
        ),
      );
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  group("asserts", () {
    assertTest(
      "not",
      () => CountryName(
        language: value.language,
        official: value.official,
        common: value.common,
      ),
      shouldThrow: false,
    );

    assertTest(
      "empty official",
      () => CountryName(
        language: value.language,
        official: TestData.emptyString,
        common: value.common,
      ),
    );

    assertTest(
      "empty common",
      () => CountryName(
        language: value.language,
        official: value.official,
        common: TestData.emptyString,
      ),
    );
  });

  test("toString", () {
    expect(
      value.toString(short: false).toUpperCase(),
      contains(value.language.code),
    );
    expect(
      value.toString().toUpperCase(),
      isNot(contains(value.language.code)),
    );
  });

  test("toJson", () {
    final json = value.toJson();
    expect(
      value,
      // ignore: avoid-type-casts, it's a test.
      CountryNameExtension.fromMap(jsonDecode(json) as Map<String, Object?>),
    );
  });
});
