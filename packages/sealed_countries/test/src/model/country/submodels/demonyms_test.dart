import "dart:convert";

import "package:_sealed_world_tests/sealed_world_tests.dart";
import "package:sealed_countries/src/helpers/extensions/country_submodels/demonyms_extension.dart";
import "package:sealed_countries/src/model/country/submodels/demonyms.dart";
import "package:sealed_currencies/sealed_currencies.dart";
import "package:test/test.dart";

import "../../../test_data.dart";

void main() => group("$Demonyms", () {
  const value = Demonyms(
    language: LangEng(),
    female: TestData.string,
    male: TestData.string,
  );

  group("equality", () {
    const other = Demonyms(
      language: LangFra(),
      female: TestData.string,
      male: TestData.string,
    );
    final array = {value, other};

    test("basic", () {
      expect(value, isNot(equals(other)));
      expect(value, same(array.first));
      expect(
        value,
        equals(
          Demonyms(
            language: array.first.language,
            female: value.female,
            male: value.male,
          ),
        ),
      );
      expect(
        array.first,
        equals(
          Demonyms(
            language: value.language,
            female: value.female,
            male: value.male,
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
        Demonyms(
          language: value.language,
          female: value.female,
          male: value.male,
        ),
      );
      // ignore: avoid-duplicate-test-assertions, this is mutable array.
      expect(array.length, 2);
    });
  });

  group("asserts", () {
    assertTest(
      "not",
      () => Demonyms(
        language: value.language,
        female: value.female,
        male: value.male,
      ),
      shouldThrow: false,
    );

    assertTest(
      "empty female",
      () => Demonyms(
        language: value.language,
        female: TestData.emptyString,
        male: value.male,
      ),
    );

    assertTest(
      "empty male",
      () => Demonyms(
        language: value.language,
        female: value.female,
        male: TestData.emptyString,
      ),
    );
  });

  test("toJson", () {
    final json = value.toJson();
    expect(
      value,
      // ignore: avoid-type-casts, it's a test.
      DemonymsExtension.fromMap(jsonDecode(json) as Map<String, Object?>),
    );
  });
});
